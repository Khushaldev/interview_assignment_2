// ignore_for_file: invalid_annotation_target

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../data/models/time_period_model/time_period.dart';
import '../../../data/models/transaction_category_model/transaction_category.dart';
import '../../../data/models/transaction_model/transaction.dart';
import '../../utils/type_def/map_type_def.dart';
import 'db_keys.dart';

part 'local_storage_service.freezed.dart';
part 'local_storage_service.g.dart';

enum LoginType { email, google, facebook, faceId }

abstract class LocalStorageService {
  LocalStorageService._();

  static late final String boxName;
  static late final Box box;

  static AppCache? cache;

  // Stream for real-time cache updates
  static final _cacheStreamController = StreamController<AppCache>.broadcast();
  static Stream<AppCache> get cacheStream => _cacheStreamController.stream;

  static final _lock = Completer<void>();

  // Stream subscription for box changes
  static StreamSubscription<BoxEvent>? _boxSubscription;

  /// Initialize Hive and open the specified box
  static Future<void> init(String name) async {
    if (!_lock.isCompleted) {
      boxName = name;
      await Hive.initFlutter();
      await _safeOpenBox();

      final Json convertedData = _convertDynamicValue(box.toMap());
      cache = AppCache.fromJson(convertedData);
      // logConsole(cache?.toJson(), label: 'Cached Data');

      // Watch for box changes and update the cache stream
      _boxSubscription = box.watch().listen((event) {
        _updateCache();
      });

      _lock.complete();
    } else {
      await _lock.future;
    }
  }

  static Future<void> _updateCache() async {
    try {
      final Json updatedData = _convertDynamicValue(box.toMap());
      cache = AppCache.fromJson(updatedData);
      _cacheStreamController.add(cache!);
      // logConsole(
      //   cache?.toJson(),
      //   label: '${DateTime.now()} Cache updated',
      //   print: false,
      // );
    } catch (_) {}
  }

  /// Open a box safely (reopen if not already open)
  static Future<void> _safeOpenBox() async {
    if (!Hive.isBoxOpen(boxName)) {
      box = await Hive.openBox(boxName);
    }
  }

  /// Get a value of type `T` from the box
  static Future<dynamic> get<T>(String key) async {
    await _safeOpenBox();
    final result = box.get(key);
    if (result == null) return null;
    return _convertDynamicValue(result);
  }

  /// Put a value of type `T` into the box
  static Future<void> put<T>(String key, T value) async {
    await _safeOpenBox();
    await box.put(key, value);
    await _updateCache();
  }

  static Future<void> putMany<T>(List<(String, T)> kV) async {
    await _safeOpenBox();
    for (final val in kV) {
      await box.put(val.$1, val.$2);
    }
    await _updateCache();
  }

  /// Bulk put multiple key-value pairs into the box
  static Future<void> putAll(Json value) async {
    await _safeOpenBox();
    await box.putAll(value);
  }

  /// Clear all data from the box
  static Future<void> clear() async {
    await _safeOpenBox();
    await box.clear();
  }

  /// Clear all data from the box
  static Future<void> deleteOne({required String key}) async {
    await _safeOpenBox();
    await box.delete(key);
  }

  static Future<void> deleteMany<T>(List<String> keys) async {
    await _safeOpenBox();
    for (final key in keys) {
      await box.delete(key);
    }
  }

  /// Close the Hive box
  static Future<void> close() async {
    if (Hive.isBoxOpen(boxName)) {
      await box.close();
    }
  }

  /// Delete the current box
  static Future<void> deleteBox() async {
    if (Hive.isBoxOpen(boxName)) {
      await box.deleteFromDisk();
    }
  }

  /// Delete all Hive boxes
  static Future<void> deleteAllBoxes() async {
    await Hive.deleteFromDisk();
  }

  /// Dispose resources and streams
  static Future<void> dispose() async {
    await close();
    await _boxSubscription?.cancel();
    await _cacheStreamController.close();
  }

  static dynamic _convertDynamicValue(dynamic value) {
    if (value is Map) {
      return value.map<String, dynamic>((k, v) {
        dynamic val = v;
        if (v is Map || v is List) {
          val = _convertDynamicValue(v);
        }
        return MapEntry(k.toString(), val);
      });
    } else if (value is List) {
      return List.from(
        value.map((e) {
          dynamic val = e;
          if (e is Map || e is List) {
            val = _convertDynamicValue(e);
          }
          return val;
        }),
      );
    }

    return value;
  }
}

@freezed
abstract class AppCache with _$AppCache {
  const factory AppCache({
    @JsonKey(name: DBKeys.categories) @Default([]) List<TransactionCategory> categories,
    @JsonKey(name: DBKeys.timePeriods) @Default([]) List<TimePeriod> timePeriods,
    @JsonKey(name: DBKeys.transactions) @Default([]) List<Transaction> transactions,
  }) = _AppCache;

  factory AppCache.fromJson(Map<String, dynamic> json) => _$AppCacheFromJson(json);
}
