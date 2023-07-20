import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  static const String kSelectedLanguageKey = 'selectedLanguage';

  static Future<void> saveSelectedLanguage(String languageCode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(kSelectedLanguageKey, languageCode);
  }

  static Future<String?> getSelectedLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(kSelectedLanguageKey);
  }
}
