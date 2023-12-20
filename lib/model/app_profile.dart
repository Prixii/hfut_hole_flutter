import 'package:shared_preferences/shared_preferences.dart';

class AppProfile {
  static SharedPreferences? _prefs;
  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static String get studentId => _prefs!.getString('studentId') ?? '';
  static String get password => _prefs!.getString('password') ?? '';
  static String get token => _prefs!.getString('token') ?? '';
  static bool get rememberMe => _prefs!.getBool('rememberMe') ?? false;
  static bool get autoLogin => _prefs!.getBool('autoLogin') ?? false;

  static set studentId(String value) => _prefs!.setString('studentId', value);
  static set password(String value) => _prefs!.setString('password', value);
  static set token(String value) => _prefs!.setString('token', value);
  static set rememberMe(bool value) => _prefs!.setBool('rememberMe', value);
  static set autoLogin(bool value) => _prefs!.setBool('autoLogin', value);
}
