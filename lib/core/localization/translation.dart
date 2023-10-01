import 'package:get/get.dart';

class MyTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {
          "1": "اختر اللغه",
          "2": "العربيه",
          '3': 'الانجليزيه',
          '4': 'تسجيل الدخول',
        },
        "en": {
          '1': 'Chosse Language',
          '2': 'Arabic',
          '3': 'English',
          '4': 'Sign In',
        }
      };
}
