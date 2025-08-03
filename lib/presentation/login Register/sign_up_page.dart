import 'package:flutter/material.dart';
import 'package:flutter_basics/Navigation%20Bar/navigation_bar.dart';
import 'package:flutter_basics/core/configs/assets/app_vectors.dart';
import 'package:flutter_basics/core/configs/themes/app_colors.dart';
import 'package:flutter_basics/presentation/choose%20mode/pages/home_page.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../Basic App Button/basic_app_button.dart';
import 'Sign_in_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: signIntext(context),
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
              register_text(),
              SizedBox(height: 20,),
              fullnameField(),
              SizedBox(height: 10,),
              emailField(),
              SizedBox(height: 10,),
              passwordField(),
              SizedBox(height: 15,),
              BasicAppButton(onPressed: (){Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context)=>NavigationBarPage()));}
                  , title: 'Create Account')

            ],
          ),
        ),
      ),
    );
  }
}

Widget register_text(){
  return Text('Register',style: TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  ),
  textAlign: TextAlign.center);
}

Widget fullnameField(){
  return TextField(
       decoration: InputDecoration(
         hintText: 'Full Name',
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

Widget emailField(){
  return TextField(
    decoration: InputDecoration(
        hintText: 'Email',
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


Widget signIntext(BuildContext context){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 50),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Do you have an account?',style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w400,
          fontSize: 14
        ),),
        TextButton(onPressed: (){
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder:(BuildContext context)=>SignInPage()));
        }, child: Text('Sign In',
        style: TextStyle(color: Colors.green),))
      ],
    ),
  );
}