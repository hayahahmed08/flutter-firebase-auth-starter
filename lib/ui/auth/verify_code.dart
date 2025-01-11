import 'package:flutter/material.dart';
class VerifyCode extends StatefulWidget {
  String verificationId ;
  const VerifyCode({super.key});

  @override
  State<VerifyCode> createState() => _VerifyCodeState();
}

class _VerifyCodeState extends State<VerifyCode> {
  String verificationId ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
