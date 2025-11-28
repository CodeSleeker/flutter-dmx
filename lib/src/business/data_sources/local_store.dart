abstract class LocalStore {
  Future<void> setString(String key, String value);
  Future<String> getString(String key);
  Future<bool> getBool(String key);
  Future<void> setBool(String key, bool value);
  Future<void> setStringList(String key, List<String> value);
  Future<List<String>> getStringList(String key);
}
