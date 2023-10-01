import 'dart:ui';

import 'package:get/get.dart';

class Language extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'title': 'App',

    },
    'hi_IN': {
      'title': 'App',


    },
  };
}
class LanguageController extends GetxController {
  RxString selectedLanguage = 'en_US'.obs;

  void changeLanguage(String languageCode) {
    selectedLanguage.value = languageCode;
    Get.updateLocale(Locale(languageCode));
  }
}
