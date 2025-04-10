import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:interview_assignment_app/core/utils/constants.dart';
import 'package:tflite_flutter/tflite_flutter.dart' as tf;

class TextCategoryPredictor {
  late tf.Interpreter _interpreter;
  late Map<String, int> _vocabulary;
  late List<String> _labelEncoder;

  Future<void> loadModel() async {
    _interpreter = await tf.Interpreter.fromAsset(FilePath.transactionCategoryMLModel);

    // Load vectorizer vocabulary (exported from Python as a JSON file)
    final vocabJson = await rootBundle.loadString(FilePath.vectorizerVocab);
    _vocabulary = Map<String, int>.from(jsonDecode(vocabJson));

    // Load label encoder classes (exported from Python)
    final labelsJson = await rootBundle.loadString(FilePath.labelEncoder);
    _labelEncoder = List<String>.from(jsonDecode(labelsJson));
  }

  List<double> _vectorize(String text) {
    final vector = List.filled(_vocabulary.length, 0.0);
    final words = text.toLowerCase().split(' ');

    for (var word in words) {
      if (_vocabulary.containsKey(word)) {
        vector[_vocabulary[word]!] = 1.0;
      }
    }
    return vector;
  }

  String predictCategory(String text) {
    final inputVector = _vectorize(text);
    final input = [inputVector];

    // Prepare input and output tensors
    final output = List.generate(1, (_) => List.filled(_labelEncoder.length, 0.0));
    _interpreter.run(input, output);

    final prediction = output[0].indexOf(output[0].reduce((a, b) => a > b ? a : b));
    return _labelEncoder[prediction];
  }
}
