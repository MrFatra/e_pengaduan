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
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        // primarySwatch: Colors.orange,
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateProperty.all(kSecondaryColor),
          overlayColor: MaterialStateProperty.all(Colors.transparent),
        ),
        textTheme: TextTheme(
          // ignore: deprecated_member_use
          headline6: TextStyle(
            color: Color(0xFF3B3B3B),
            fontSize: 16,
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: kSecondaryColor,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
            side: const BorderSide(
              color: kSecondaryColor,
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ElevatedButton.styleFrom(
            // textStyle: TextStyle(fontWeight: FontWeight.bold),
            padding: const EdgeInsets.all(15),
            foregroundColor: kSecondaryColor,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(15),
            backgroundColor: kSecondaryColor,
          ),
        ),
      ),
      home: WelcomeScreen(),
    );
  }
}
