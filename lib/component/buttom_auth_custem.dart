import 'package:flutter/material.dart';

class buttom_auth_custem extends StatelessWidget {

final String buttomName;
final void Function()? onPressed ;

   const buttom_auth_custem({super.key, required this.buttomName,required this.onPressed});
 
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        height: 40,
        elevation: 18,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.0)),
        onPressed: onPressed,
        color: Colors.blue,
        child:  Text(buttomName));
  }
}
