import 'package:e_pengaduan/auth/login.auth.dart';
import 'package:e_pengaduan/constant.dart';
import 'package:e_pengaduan/pages/register_people.page.dart';
import 'package:e_pengaduan/pages/register_petugas.page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/myform.widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();

    LoginAuth loginAuth = Get.put(LoginAuth());

    RxBool isOfficer = false.obs;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          color: kSecondaryColor,
          splashRadius: 25,
          splashColor: kSecondaryColor.withOpacity(.3),
          highlightColor: kSecondaryColor.withOpacity(.3),
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
                          controller: username,
                          prefixIcon: Icon(Icons.person),
                          label: 'Masukkan username',
                        ),
                        SizedBox(height: 20),
                        MyForm(
                          controller: password,
                          prefixIcon: Icon(Icons.lock_outline_rounded),
                          label: 'Masukkan password',
                        ),
                        SizedBox(height: 15),
                        Obx(
                          () => Wrap(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  isOfficer.value = !isOfficer.value;
                                },
                                child: Row(
                                  children: [
                                    Checkbox(
                                        value: isOfficer.value,
                                        onChanged: (val) {
                                          isOfficer.value = val!;
                                        }),
                                    Text('Saya petugas')
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  isOfficer.value = false;
                                },
                                child: Row(
                                  children: [
                                    Checkbox(
                                        value: !isOfficer.value,
                                        onChanged: (val) {
                                          isOfficer.value = false;
                                        }),
                                    Text('Saya masyarakat')
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                            onPressed: () async {
                              if (isOfficer.value) {
                                await loginAuth
                                    .loginOfficer(
                                        username: username.text,
                                        password: password.text)
                                    .then((value) => debugPrint(value));
                              } else {
                                await loginAuth
                                    .loginPeople(
                                        username: username.text,
                                        password: password.text)
                                    .then((value) => debugPrint(value));
                              }
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
                                  .copyWith(fontWeight: FontWeight.w500),
                              // style: TextStyle(
                              //   fontWeight: FontWeight.bold,
                              // ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: GestureDetector(
                            onTap: () {
                              Get.to(() => const RegisterPagePeople());
                            },
                            child: Text(
                              'Buat akun Masyarakat',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kSecondaryColor,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => const RegisterPageOfficer());
                          },
                          child: Text(
                            'Buat akun Petugas',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: kSecondaryColor,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
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
