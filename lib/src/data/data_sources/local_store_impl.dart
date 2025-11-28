import 'package:flutter_dmx/src/business/data_sources/local_store.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStoreImpl implements LocalStore {
  SharedPreferences? _prefs;

  Future<SharedPreferences> get _instance async {
    return _prefs ??= await SharedPreferences.getInstance();
  }

  @override
  Future<String> getString(String key) async {
    final prefs = await _instance;
    return prefs.getString(key) ?? '';
  }

  @override
  Future<void> setString(String key, String value) async {
    final prefs = await _instance;
    await prefs.setString(key, value);
  }

  @override
  Future<bool> getBool(String key) async {
    final prefs = await _instance;
    return prefs.getBool(key) ?? false;
  }

  @override
  Future<void> setBool(String key, bool value) async {
    final prefs = await _instance;
    await prefs.setBool(key, value);
  }

  @override
  Future<void> setStringList(String key, List<String> value) async {
    final prefs = await _instance;
    await prefs.setStringList(key, value);
  }

  @override
  Future<List<String>> getStringList(String key) async {
    final prefs = await _instance;
    return prefs.getStringList(key) ?? [];
  }
}
