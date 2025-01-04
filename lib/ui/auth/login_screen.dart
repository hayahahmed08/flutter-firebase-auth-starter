import 'package:firebase/widgets/round_button.dart';
import 'package:flutter/material.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  void dispose (){
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            controller: emailController,
            decoration: const InputDecoration(
              hintText: 'Email',
              helperText: 'abc@example.com',
                prefixIcon: Icon(Icons.alternate_email)
            )
          ),
          TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                  hintText: 'Password',
                  helperText: '******',

              )
          ),
        RoundButton(title: 'Login' ,onTap: (){},)
        ],
      ),
    );
  }
}
