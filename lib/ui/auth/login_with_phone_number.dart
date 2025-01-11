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
  bool loading = false;
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
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  hintText: '+16505553439', prefixIcon: Icon(Icons.phone)),
            ),
            SizedBox(
              height: 70,
            ),
            RoundButton(
              title: 'login',
              loading: loading,
              onTap: () {
                setState(() {
                  loading = true;
                });
                auth.verifyPhoneNumber(
                    phoneNumber: phonenumbercontroller.text,
                    verificationCompleted: (_) {
                      setState(() {
                        loading = false;
                      });
                    },
                    verificationFailed: (e) {
                      Utils().toastMessage(e.toString());
                    },

                    //this verification id will be taken from the user then we will combine to & give to server to process the registration
                    codeSent: (String verificationId, int? token) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VerifyCode(
                                    verificationId: verificationId,
                                  )));
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
