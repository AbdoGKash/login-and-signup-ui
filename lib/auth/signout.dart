// ignore_for_file: camel_case_types

import 'package:firebaselesson/component/text_field_custem.dart';
import 'package:flutter/material.dart';

class signout extends StatelessWidget {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();

  signout({super.key});

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
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(50)),
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
                const Text('Register',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                const Text(
                  'Enter your personalInformation',
                  style: TextStyle(color: Colors.grey),
                ),
                Container(
                  height: 10,
                ),
                const Text('Username',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Container(
                  height: 10,
                ),
                textfieldcustem(
                    hinttext: 'Enter your name', mycontroller: username),
                Container(
                  height: 10,
                ),
                const Text('Email',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Container(
                  height: 10,
                ),
                textfieldcustem(
                    hinttext: 'Enter your email', mycontroller: email)
              ],
            ),
            Container(
              height: 10,
            ),
            const Text('Password',
                style: TextStyle(fontWeight: FontWeight.bold)),
            Container(
              height: 10,
            ),
            textfieldcustem(hinttext: 'Enter password', mycontroller: password),
            Container(
              height: 30,
            ),
            MaterialButton(
                height: 50,
                elevation: 18,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22.0)),
                onPressed: () {},
                color: Colors.blue,
                child: const Text('Register')),
            Container(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Have an account ? "),
                InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('/login');
                    },
                    child: const Text(
                      'Login',
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
