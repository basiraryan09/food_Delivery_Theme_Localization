

class Language {
  final int id;
  final String name;
  final String flag;
  final String languageCode;

  Language({required this.name, required this.id, required this.languageCode, required this.flag});

  static List<Language> languageList() {
    return <Language> [
      Language(name: "English", id: 1, languageCode: 'en', flag: '🇺🇸'),
      Language(name: "فارسی", id: 2, languageCode: 'fa', flag: '🇦🇫'),
    ];
}
}