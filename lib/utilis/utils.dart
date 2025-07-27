import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils{
  static void AlertDialog(String message,BuildContext context){
    AlertDialog(message, context);
  }
  //after done Textfilled go another textfilled
  static void filledFocusChnages(
    BuildContext context,
    FocusNode current,
    FocusNode nextFocus
  ){
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }
  static void toastMessage(String message,BuildContext context){
  Fluttertoast.showToast(msg: message,
  backgroundColor: Colors.red,
  fontSize: 20
  );
  }
}