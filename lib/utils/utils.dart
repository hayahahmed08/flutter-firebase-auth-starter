import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class Utils {

  void toastMessage(String message){
    Fluttertoast.showToast(
        toastLength: Toast.LENGTH_SHORT,
        msg: message,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
}