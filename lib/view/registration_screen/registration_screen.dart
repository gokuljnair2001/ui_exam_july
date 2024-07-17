// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ui_exam_july/view/login_screen/login_screen.dart';

String email = '';
String password = '';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final eMailKey = GlobalKey<FormState>();
    final passwordKey = GlobalKey<FormState>();
    final confirmPasswordKey = GlobalKey<FormState>();

    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
    TextEditingController emailController = TextEditingController();

    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back,
            size: 30,
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 29,
                ),
                Center(
                  child: Text(
                    'Sign up for Free',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 33,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Form(
                  key: eMailKey,
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.withOpacity(0.7)),
                            borderRadius: BorderRadius.circular(13)),
                        hintText: 'Your Email Adress',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                            borderSide: BorderSide(
                                color: Colors.grey.withOpacity(0.5)))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'email cant be empty';
                      } else if (!value.contains('@')) {
                        return 'email must contains @';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Form(
                  key: passwordKey,
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.withOpacity(0.7)),
                            borderRadius: BorderRadius.circular(13)),
                        hintText: 'enter your password',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                            borderSide: BorderSide(
                                color: Colors.grey.withOpacity(.5)))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'password cant be empty';
                      } else if (value.length < 8) {
                        return 'password must be 8 letters';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Form(
                  key: confirmPasswordKey,
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.withOpacity(0.5)),
                            borderRadius: BorderRadius.circular(13)),
                        hintText: 'confirm password',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                            borderSide: BorderSide(
                                color: Colors.grey.withOpacity(.5)))),
                    validator: (value) {
                      if (passwordKey != confirmPasswordKey) {
                        return 'password doesnt match';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                InkWell(
                  onTap: () {
                    eMailKey.currentState!.validate();
                    passwordKey.currentState!.validate();
                    confirmPasswordKey.currentState!.validate();
                    {
                      if (emailController.text == email &&
                          passwordController.text == password &&
                          confirmPasswordController.text == password) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ));
                      }
                    }
                  },
                  child: InkWell(
                    child: Container(
                      height: 50,
                      width: 500,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(13)),
                      child: Center(
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 120,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'dont have an account ?',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          letterSpacing: -1),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'sign up',
                          style: TextStyle(color: Colors.blue),
                        ))
                  ],
                )
              ],
            )));
  }
}
