import 'package:firebase/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:firebase/widgets/round_button.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginWithPhoneNumber extends StatefulWidget {
  const LoginWithPhoneNumber({super.key});

  @override
  State<LoginWithPhoneNumber> createState() => _LoginWithPhoneNumberState();
}

class _LoginWithPhoneNumberState extends State<LoginWithPhoneNumber> {
  final phonenumbercontroller = TextEditingController();
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            TextFormField(
              controller: phonenumbercontroller,
              decoration: const InputDecoration(
                  hintText: '800‑555‑0199', prefixIcon: Icon(Icons.phone)),
            ),
            SizedBox(
              height: 70,
            ),
            RoundButton(
              title: 'login',
              onTap: () {
                auth.verifyPhoneNumber(
                    phoneNumber: phonenumbercontroller.text,
                    verificationCompleted: (_){}, verificationFailed: (e){
                      Utils().toastMessage(e.toString());
                }, codeSent: (String verification, int? token){}, codeAutoRetrievalTimeout: (e) {
                  Utils().toastMessage(e.toString());
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
