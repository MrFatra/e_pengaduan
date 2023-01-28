import 'package:e_pengaduan/auth/register.auth.dart';
import 'package:e_pengaduan/constant.dart';
import 'package:e_pengaduan/pages/login.page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'dashboard_petugas.page.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    RegisterAuth registerAuth = Get.put(RegisterAuth());

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg/bg-welcome.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(15),
            child: PageView(
              children: [
                ListView(
                  padding: EdgeInsets.all(25),
                  children: [
                    Column(
                      children: [
                        Lottie.asset(
                          'assets/anim/writing.json',
                          fit: BoxFit.contain,
                          height: MediaQuery.of(context).size.height / 5,
                        ),
                        Text(
                          'Selamat Datang di Pengaduan Online Masyarakat.',
                          style: TextStyle(
                            color: kTextColor,
                            fontWeight: FontWeight.w800,
                            fontSize: 32,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Sampaikan laporan Anda langsung kepada instansi pemerintah berwenang.',
                          style: TextStyle(
                            color: kTextColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    OutlinedButton(
                        onPressed: () {
                          Get.to(() => const LoginPage());
                        },
                        child: Text('Masuk')),
                    ElevatedButton(
                        onPressed: () {
                          registerAuth
                              .register(
                                officerName: 'Ramadhan Fatra',
                                username: 'aku',
                                password: 'ramadhan',
                                passwordConfirmation: 'ramadhan',
                                level: 'admin',
                                phoneNumber: '08822123231',
                              )
                              .then((value) => debugPrint(value));
                        },
                        child: Text('Daftar')),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
