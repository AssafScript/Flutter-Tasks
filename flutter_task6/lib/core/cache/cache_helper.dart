import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static SharedPreferences? _sharedPreferences;

  static init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static putString(String key, String value) {
    return _sharedPreferences?.setString(key, value);
  }

  static String? getString(String key) {
    return _sharedPreferences?.getString(key);
  }

  static putBool(String key, bool value) {
    return _sharedPreferences?.setBool(key, value);
  }

  static bool? getBool(String key) {
    return _sharedPreferences?.getBool(key);
  }
}
