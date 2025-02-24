import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tunes/common/widgets/button/basic_app_button.dart';
import 'package:tunes/core/config/assets/app_vectors.dart';
import 'package:tunes/core/config/theme/app_colors.dart';
import 'package:tunes/presentation/auth/pages/signin.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: SvgPicture.asset(AppVectors.logo, height: 50, width: 60),
          leading: BackButton()),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _registerText(),
            SizedBox(height: 50),
            _fullNameField(context),
            SizedBox(height: 10),
            _emailField(context),
            SizedBox(height: 10),
            _passwordField(context),
            SizedBox(height: 20),
            BasicAppButton(onPressed: () {}, title: "Create Account"),
            SizedBox(height: 30),
            _signInText(context)
          ],
        ),
      ),
    );
  }
}

Widget _registerText() {
  return Text('Register',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold));
}

Widget _fullNameField(BuildContext context) {
  return TextField(
    decoration: InputDecoration(hintText: "Full Name")
        .applyDefaults(Theme.of(context).inputDecorationTheme),
  );
}

Widget _emailField(BuildContext context) {
  return TextField(
    decoration: InputDecoration(hintText: "E-Mail")
        .applyDefaults(Theme.of(context).inputDecorationTheme),
  );
}

Widget _passwordField(BuildContext context) {
  return TextField(
    decoration: InputDecoration(hintText: "Password")
        .applyDefaults(Theme.of(context).inputDecorationTheme),
  );
}

Widget _signInText(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Already have an account? ', style: TextStyle(fontSize: 15)),
        TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Signin()));
            },
            child: Text(
              "Sign In",
              style: TextStyle(fontSize: 15, color: AppColors.primary),
            ))
      ],
    ),
  );
}
