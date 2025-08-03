
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../Basic App Button/basic_app_button.dart';
import '../../../core/configs/assets/app_images.dart';
import '../../../core/configs/assets/app_vectors.dart';
import '../../login Register/login_register.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [


            Container(
              padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 40),
              decoration:  BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AppImages.chooseModeBG),)
              ),
              child: Column(
                children: [
                  Center(child: SvgPicture.asset(AppVectors.logo)),
                  const Spacer(),
                  const Text('Choose Mode',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      )),
                SizedBox(height: 21,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          ClipOval(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 3,sigmaY: 3),
                              child: Container(
                                child: SvgPicture.asset(AppVectors.sun,
                                fit: BoxFit.none,),
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.2),
                                  shape: BoxShape.circle
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 15,),
                          Text('Light',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600
                          ),)
                        ],
                      ),
                      SizedBox(width: 40,),
                      Column(
                        children: [
                          ClipOval(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 3,sigmaY: 3),
                              child: Container(
                                child: SvgPicture.asset(AppVectors.moon,
                                fit: BoxFit.none,),
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.2),
                                    shape: BoxShape.circle
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 15,),
                          Text('Dark',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600
                            ),)
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 100,),
                  BasicAppButton(onPressed:(){
                    Navigator.push(context,
                         MaterialPageRoute(builder: (BuildContext context)=>login_register()
                        )
                    );
                  }
                      , title: 'Continue'),
                  const SizedBox(height: 20,)
                ],
              ),
            ),



          ]),
    );
  }
}
