import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class DashboardPetugasPage extends StatelessWidget {
  const DashboardPetugasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(15),
          children: [
            // Lottie Animation
            Lottie.asset('assets/anim/document-success.json'),
            Text('List Laporan: '),
          ],
        ),
      ),
    );
  }
}
