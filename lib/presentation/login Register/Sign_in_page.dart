import 'package:flutter/material.dart';
import 'package:flutter_basics/Navigation%20Bar/navigation_bar.dart';
import 'package:flutter_basics/core/configs/assets/app_vectors.dart';
import 'package:flutter_basics/core/configs/themes/app_colors.dart';
import 'package:flutter_basics/presentation/login%20Register/sign_up_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Basic App Button/basic_app_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: signUptext(context),
      appBar: AppBar(
        backgroundColor: AppColors.LightBackground,
        title:  SvgPicture.asset(AppVectors.logo,
          height: 40,
          width: 40,) ,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
              SignInText(),
              SizedBox(height: 50,),
              emailField(),
              SizedBox(height: 20,),
              passwordField(),
              SizedBox(height: 15,),
              BasicAppButton(onPressed: (){
                Navigator.push(context
                    , MaterialPageRoute(builder: (BuildContext context)=>NavigationBarPage()));
              },
                  title: 'Sign In')

            ],
          ),
        ),
      ),
    );
  }
}

Widget SignInText(){
  return Text('Sign In',style: TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  ),
      textAlign: TextAlign.center);
}


Widget emailField(){
  return TextField(
    decoration: InputDecoration(
        hintText: 'Enter Username Or Email',
        filled: true,
        contentPadding: EdgeInsets.all(20),
        fillColor: Colors.transparent,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Colors.black,
              width: 0.4,
            )
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Colors.black,
              width: 0.1,
            )
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
                color: Colors.green
            )
        )
    ),
  );
}

Widget passwordField(){
  return TextField(
    decoration: InputDecoration(
        hintText: 'Password',
        filled: true,
        contentPadding: EdgeInsets.all(20),
        fillColor: Colors.transparent,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Colors.black,
              width: 0.4,
            )
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Colors.black,
              width: 0.1,
            )
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
                color: Colors.green
            )
        )
    ),
  );
}


Widget signUptext(BuildContext context){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 50),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Already have an account?',style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 14
        ),),
        TextButton(onPressed: (){
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder:(BuildContext context)=>SignUpPage()));
        }, child: Text('Register',
          style: TextStyle(color: Colors.green),))
      ],
    ),
  );
}