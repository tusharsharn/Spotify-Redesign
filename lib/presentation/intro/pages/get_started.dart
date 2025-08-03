import 'package:flutter/material.dart';
import 'package:flutter_basics/core/configs/assets/app_images.dart';
import 'package:flutter_basics/core/configs/assets/app_vectors.dart';
import 'package:flutter_basics/core/configs/themes/app_colors.dart';
import 'package:flutter_basics/presentation/choose%20mode/pages/choose_mode.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../Basic App Button/basic_app_button.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 40,horizontal: 40),
              decoration: BoxDecoration(
                color: Colors.black.withValues(
                  alpha: (243*0.15).toDouble()
                ),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AppImages.introBG),)
              ),
              child: Column(
                children: [
                  Center(child: SvgPicture.asset(AppVectors.logo)),
                  Spacer(),
                  Text('Enjoy Listening To Music',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  )),
                  SizedBox(height: 21,),

                  Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.',
                        style: TextStyle(
                          color: AppColors.Grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 29,),
                  BasicAppButton(onPressed:(){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context)=>ChooseModePage()
                        )
                    );
                  }
                      , title: 'Get Started'),
                  SizedBox(height: 20,)
                ],
              ),
            ),



  ]),
    );
  }
}
