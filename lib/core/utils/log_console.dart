import 'package:flutter/foundation.dart';

void logConsole(dynamic data, [StackTrace? stackTrace]) {
  if (kDebugMode) {
    print('-------------------------Start-------------------------');
    print('');
    print(data);
    if (stackTrace != null) {
      print('');
      print('----------------Stack Trace----------------');
      print('');
      print(stackTrace.toString());
    }
    print('');
    print('--------------------------End------------------------');
  }
}
