import 'package:asror_lesson/constants/strings.dart';
import 'package:asror_lesson/main.dart';
import 'package:flutter/material.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  //
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void signIn() {
    if (password == passwordController.text && email == emailController.text) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const MyHomePage(title: '')));
    } else{
      print('Password is wrong');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              textField('email', Icons.email, emailController),
              const SizedBox(
                height: 10,
              ),
              textField('password', Icons.lock, passwordController),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                    onPressed: () {
                      signIn();
                    },
                    child: const Text('Sign in')),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget textField(
      String text, IconData icon, TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: text,
        prefixIcon: Icon(icon),
      ),
    );
  }
}
