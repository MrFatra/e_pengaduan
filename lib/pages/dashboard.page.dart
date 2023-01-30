import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:e_pengaduan/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    RxInt selected = 0.obs;

    return Obx(
      () => Scaffold(
        bottomNavigationBar: Container(
          padding: const EdgeInsets.only(bottom: 10, right: 15, left: 15),
          child: BottomBarBackground(
            backgroundColor: Colors.transparent,
            backgroundSelected: kSecondaryColor.withOpacity(.3),
            color: Colors.black38,
            colorSelected: Color.fromARGB(255, 255, 0, 0),
            indexSelected: selected.value,
            paddingVertical: 24,
            onTap: (int index) {
              selected.value = index;
            },
            items: [
              TabItem(icon: Icons.space_dashboard_outlined, title: 'Dashboard'),
              TabItem(icon: Icons.person_outline_rounded, title: 'Profile'),
            ],
          ),
        ),
        body: ListView(
          children: [
            // Lottie animation
            Text('Laporan Anda:'),
          ],
        ),
      ),
    );
  }
}
