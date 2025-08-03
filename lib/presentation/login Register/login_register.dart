import 'package:flutter/material.dart';
import 'package:flutter_basics/presentation/login%20Register/Sign_in_page.dart';
import 'package:flutter_basics/presentation/login%20Register/sign_up_page.dart';
import 'package:flutter_svg/svg.dart';

import '../../Basic App Button/basic_app_button.dart';
import '../../core/configs/assets/app_images.dart';
import '../../core/configs/assets/app_vectors.dart';

class login_register extends StatelessWidget {
  const login_register({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
       children: [
         Align(
           alignment: Alignment.bottomLeft,
           child: Image.asset(AppImages.BillieLoginSignup),
         ),
         Align(
           alignment: Alignment.center,
           child: Padding(
             padding: const EdgeInsets.symmetric(horizontal: 40),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                SvgPicture.asset(AppVectors.logo),
                 SizedBox(height: 55,),
                 Text('Enjoy Listening To Music',
                     style: TextStyle(
                       color: Colors.black,
                       fontWeight: FontWeight.bold,
                       fontSize: 24,
                     )),
                 SizedBox(height: 21,),
                 Text('Spotify is a proprietary Swedish audio streaming and media services provider ',
                   style: TextStyle(
                     color: Color(0xff797979),
                     fontWeight: FontWeight.w500,
                     fontSize: 17,
                   ),
                   textAlign: TextAlign.center,
                 ),
                 SizedBox(height: 21,),
                 Row(
                   children: [
                     Expanded(
                       flex: 1,
                       child: BasicAppButton(onPressed:
                           (){
                         Navigator.push(context,
                         MaterialPageRoute(builder: (BuildContext context)=>SignUpPage()));
                           }, title: 'Register'),
                     ),
                     SizedBox(width: 20,),
                     Expanded(
                       flex: 1,
                       child: TextButton(onPressed:(){
                         Navigator.pushReplacement(context,
                             MaterialPageRoute(builder: (BuildContext context)=>SignInPage()));}, child:Text('Sign In',
                       style: TextStyle(fontWeight: FontWeight.bold,
                       color: Colors.black,
                       fontSize: 20),
                       )),
                     ),

                   ],
                 ),
                 SizedBox(height: 50,)
               ],
             ),
           ),
         )
       ],
      ),
    );
  }
}
