// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class textfieldcustem extends StatelessWidget {

 final String hinttext ;
 final TextEditingController mycontroller;

  const textfieldcustem({super.key, required this.hinttext, required this.mycontroller});
  
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: mycontroller,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
        hintText: hinttext,
        hintStyle: const TextStyle(color: Colors.grey),
        filled: true, // عشان ياخد اللون
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: const BorderSide(),
        ),
      ),
    );
  }
}
