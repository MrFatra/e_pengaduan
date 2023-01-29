import 'package:e_pengaduan/auth/register.auth.dart';
import 'package:e_pengaduan/widgets/myform.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterMasyarakatPage extends StatelessWidget {
  const RegisterMasyarakatPage({super.key});

  @override
  Widget build(BuildContext context) {
    RegisterAuth registerAuth = Get.put(RegisterAuth());

    TextEditingController nikController = TextEditingController();
    TextEditingController namaController = TextEditingController();
    TextEditingController telpController = TextEditingController();
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController passwordConfirmationController =
        TextEditingController();

    return Scaffold(
      body: Column(
        children: [
          Card(
            child: Column(
              children: [
                Container(
                  child: Text('Register as Masyarakat'),
                ),
                MyForm(label: 'NIK', controller: nikController),
                MyForm(label: 'Nama', controller: namaController),
                MyForm(label: 'Nomor Telepon', controller: telpController),
                MyForm(label: 'Username', controller: usernameController),
                MyForm(label: 'Password', controller: passwordController),
                MyForm(
                    label: 'Konfirmasi Password',
                    controller: passwordConfirmationController),
                ElevatedButton(
                    onPressed: () {
                      registerAuth
                          .registerPeople(
                        peopleName: namaController.text,
                        nik: nikController.text,
                        username: usernameController.text,
                        password: passwordController.text,
                        passwordConfirmation:
                            passwordConfirmationController.text,
                        phoneNumber: telpController.text,
                      )
                          .then((value) {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            content: Text(value!),
                          ),
                        );
                      });
                    },
                    child: Text('Daftar'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
