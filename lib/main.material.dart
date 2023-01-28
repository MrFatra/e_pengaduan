import 'package:e_pengaduan/constant.dart';
import 'package:e_pengaduan/pages/welcome.page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainMaterial extends StatelessWidget {
  const MainMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: kSecondaryColor,
            side: const BorderSide(
              color: kSecondaryColor,
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: kSecondaryColor,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kSecondaryColor,
          ),
        ),
      ),
      home: const WelcomeScreen(),
    );
  }
}
