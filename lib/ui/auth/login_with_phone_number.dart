import 'package:firebase/ui/auth/verify_code.dart';
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
                  hintText: '+16505553439', prefixIcon: Icon(Icons.phone)),
            ),
            SizedBox(
              height: 70,
            ),
            RoundButton(
              title: 'login',
              onTap: () {
                auth.verifyPhoneNumber(
                    phoneNumber: phonenumbercontroller.text,
                    verificationCompleted: (_) {

                    },
                    verificationFailed: (e) {
                      Utils().toastMessage(e.toString());
                    },

                    //this verification id will be taken from the user then we will combine to & give to server to process the registration
                    codeSent: (String verificationId, int? token) {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => VerifyCode()));
                    },
                    codeAutoRetrievalTimeout: (e) {
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
