import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../auth/login.auth.dart';
import '../widgets/myform.widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    LoginAuth loginAuth = Get.put(LoginAuth());

    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();
    return Scaffold(
      body: ListView(
        children: [
          // Image
          // Form Container
          Container(
            child: Column(
              children: [
                Text('Masuk'),
                MyForm(
                  controller: username,
                  prefixIcon: Icon(Icons.email),
                  label: 'Masukkan username',
                ),
                MyForm(
                  controller: password,
                  prefixIcon: Icon(Icons.lock_outline_rounded),
                  label: 'Masukkan password',
                ),
                ElevatedButton(onPressed: () {}, child: Text('Masuk')),
                Row(children: [
                  Text('Belum punya akun?'),
                  TextButton(
                    onPressed: () {},
                    child: Text('Buat akun'),
                  ),
                ])
              ],
            ),
          ),
        ],
      ),
    );
  }
}
