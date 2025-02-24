import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tunes/common/widgets/button/basic_app_button.dart';
import 'package:tunes/core/config/assets/app_vectors.dart';
import 'package:tunes/core/config/theme/app_colors.dart';
import 'package:tunes/presentation/auth/pages/signup.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: SvgPicture.asset(AppVectors.logo, height: 50, width: 60),
          leading: BackButton()),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50 , horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _signInText(),
            SizedBox(height: 50),
            _emailField(context),
            SizedBox(height: 10),
            _passwordField(context),
            SizedBox(height: 20),
            BasicAppButton(onPressed: (){}, title: "Sign In"),
            SizedBox(height: 30),
            _registerBottomText(context)
            

            
        
          ],
        ),
      ),
    );
  }
}


Widget _signInText(){
  return Text('Sign In', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold));
}


Widget _emailField(BuildContext context){
  return TextField(
    decoration: InputDecoration(
      hintText: "E-Mail"
    ).applyDefaults(Theme.of(context).inputDecorationTheme),
  );
}

Widget _passwordField(BuildContext context){
  return TextField(
    decoration: InputDecoration(
      hintText: "Password"
    ).applyDefaults(Theme.of(context).inputDecorationTheme),
  );
}

Widget _registerBottomText(BuildContext context){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
    
        const Text('New to this App? ', style: TextStyle(fontSize: 15)),
        TextButton(onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Signup()));
                    }, child: Text("Register Now", style: TextStyle(fontSize: 15, color: AppColors.primary),))
      ],
    ),
  );

}