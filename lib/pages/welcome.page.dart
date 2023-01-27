import 'package:e_pengaduan/constant.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                  // Bullet Indicator
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.greenAccent,
                    ),
                  ),
                  OutlinedButton(onPressed: () {}, child: Text('Masuk')),
                  ElevatedButton(onPressed: () {}, child: Text('Daftar')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}