import 'package:e_pengaduan/constant.dart';
import 'package:e_pengaduan/pages/dashboard.page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/myform.widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_rounded,
              color: Color(0xA7000000), size: 35),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image
            // Form Container
            Card(
              elevation: 20,
              margin: EdgeInsets.all(15),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadiusDirectional.only(
                            topStart: Radius.circular(10),
                            topEnd: Radius.circular(10)),
                      ),
                      child: Center(
                          child: Text(
                        'Silahkan Login',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ))),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyForm(
                            prefixIcon: Icon(Icons.person),
                            label: 'Masukkan username'),
                        SizedBox(height: 20),
                        MyForm(
                            prefixIcon: Icon(Icons.lock_outline_rounded),
                            label: 'Masukkan password'),
                        SizedBox(height: 25),
                        ElevatedButton(
                            onPressed: () {
                              Get.to(() => const DashboardPage());
                            },
                            child: Text('Masuk'),
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(
                                double.infinity,
                                MediaQuery.of(context).size.height / 100,
                              ),
                            )),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Text(
                              'Belum punya akun? ',
                              // ignore: deprecated_member_use
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(fontWeight: FontWeight.bold),
                              // style: TextStyle(
                              //   fontWeight: FontWeight.bold,
                              // ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'buat akun',
                                // style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
