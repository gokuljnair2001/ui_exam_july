// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ui_exam_july/view/registration_screen/registration_screen.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 29,
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
                'Sign in to Your Account',
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
            TextFormField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey.withOpacity(0.7)),
                      borderRadius: BorderRadius.circular(13)),
                  hintText: 'Your Email Adress',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                      borderSide:
                          BorderSide(color: Colors.grey.withOpacity(0.5)))),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye_sharp),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey.withOpacity(.5)),
                      borderRadius: BorderRadius.circular(13)),
                  hintText: 'Your Password',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                      borderSide:
                          BorderSide(color: Colors.grey.withOpacity(0.7)))),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(6)),
                  child: Icon(Icons.check),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'remember me',
                  style: TextStyle(color: Colors.black),
                ),
                Spacer(),
                Text(
                  'Forget Password',
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 50,
              width: 500,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(13)),
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
            SizedBox(
              height: 100,
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
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegistrationScreen(),
                          ));
                    },
                    child: Text(
                      'sign up',
                      style: TextStyle(color: Colors.blue),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
