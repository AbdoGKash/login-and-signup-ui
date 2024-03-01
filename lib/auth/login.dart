// ignore_for_file: camel_case_types

import 'package:firebaselesson/auth/signout.dart';
import 'package:firebaselesson/component/buttom_auth_custem.dart';
import 'package:firebaselesson/component/text_field_custem.dart';
import 'package:flutter/material.dart';

class login extends StatelessWidget {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 70,
                ),
                Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        // color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(0)),
                    child: const Icon(
                      Icons.account_circle_outlined,
                      color: Colors.blue,
                      size: 70,
                    ),
                  ),
                ),
                Container(
                  height: 20,
                ),
                const Text('Login',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                const Text(
                  'Lonin to coutuine using app',
                  style: TextStyle(color: Colors.grey),
                ),
                Container(
                  height: 10,
                ),
                const Text('Email',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Container(
                  height: 10,
                ),
                textfieldcustem(
                    hinttext: 'Enter your email', mycontroller: email),
                Container(
                  height: 10,
                ),
                const Text('Password',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Container(
                  height: 10,
                ),
                textfieldcustem(
                    hinttext: 'Enter your password', mycontroller: password)
              ],
            ),
            Container(
              height: 10,
            ),
            InkWell(
              onTap: () {
                // ???
              },
              child: Container(
                  alignment: Alignment.topRight,
                  child: const Text(
                    'Forget Password ? ',
                    style: TextStyle(color: Colors.grey),
                  )),
            ),
            Container(
              height: 20,
            ),
            buttom_auth_custem(
              buttomName: 'Login',
              onPressed: () {
                ////
              },
            ),
            Container(
              height: 20,
            ),
            MaterialButton(
                height: 40,
                elevation: 18,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22.0)),
                onPressed: () {},
                color: Colors.white,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Text('Login with  '),
                  Image.asset(
                    'images/Glogo.png',
                    width: 50,
                    height: 30,
                  )
                ])),
            Container(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account ? "),
                InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('/signout');
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
