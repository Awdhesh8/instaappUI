import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:skenu_app/Language/language_controller.dart';

import 'Splash Screen/splash_screen.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    LanguageController languageController = Get.put(LanguageController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: Locale('en', 'US'),
      translations: Language(),
      fallbackLocale: Locale('en', 'US'),
      initialBinding: BindingsBuilder(() {
        Get.lazyPut<LanguageController>(() => LanguageController());
      }),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

