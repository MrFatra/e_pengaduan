import 'package:flutter/material.dart';

import '../widgets/myform.widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Image
          // Form Container
          Container(
            child: Column(
              children: [
                Text('Masuk'),
                MyForm(prefixIcon: Icon(Icons.email), label: 'Masukkan email'),
                MyForm(
                    prefixIcon: Icon(Icons.lock_outline_rounded),
                    label: 'Masukkan password'),
                Text('Minimal 8 karakter & berisi alfanumerik.'),
                ElevatedButton(onPressed: () {}, child: Text('Masuk')),
                Row(children: [
                  Text('belum punya akun? '),
                  TextButton(
                    onPressed: () {},
                    child: Text('buat akun'),
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
