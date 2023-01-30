import 'package:e_pengaduan/constant.dart';
import 'package:e_pengaduan/pages/login.page.dart';
import 'package:e_pengaduan/pages/register_people.page.dart';
import 'package:e_pengaduan/pages/register_petugas.page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg/bg-welcome.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
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
                        SizedBox(height: 15),
                        Text(
                          'Sampaikan laporan Anda langsung kepada instansi pemerintah berwenang.',
                          style: TextStyle(
                            color: kTextColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    OutlinedButton(
                        onPressed: () {
                          Get.to(() => const LoginPage());
                        },
                        child: Text('Masuk')),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Get.to(() => const RegisterPagePeople());
                            },
                            child: Text('Daftar as Masyarakat')),
                        ElevatedButton(
                            onPressed: () {
                              Get.to(() => const RegisterPageOfficer());
                            },
                            child: Text('Daftar as Petugas')),
                      ],
                    ),
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
