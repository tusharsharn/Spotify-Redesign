import 'package:flutter/material.dart';
import 'package:flutter_basics/core/configs/assets/app_images.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/configs/assets/app_vectors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffe8e7e7),
      body: Column(
        children: [
          Container(
            height: 320,
            width: 400,

            decoration: BoxDecoration(
                color: Colors.white,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40))
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50,bottom: 20),
                  child: Text('Profile',style: TextStyle(
                      fontSize: 21,fontWeight: FontWeight.bold
                  ),),
                ),
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage(AppImages.Tushar),fit: BoxFit.cover),
                  ),
                ),
                SizedBox(height: 7,),
                Text('Saharantushar2002@gmail.com'),
                SizedBox(height: 3,),
                Text('Tusharrr',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                ),),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text('898',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        Text('Followers')
                      ],
                    ),
                    Column(
                      children: [
                        Text('378',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        Text('Following')
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          PublicPlaylist_seemore(),
          SizedBox(
            height: 353,
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 17),
              scrollDirection: Axis.vertical,
              children: [
                profile_songs(title: 'As It Was', artist: 'Harry Styles', SongLength: '5:34',imagePath:AppImages.AsItWas ),
                          profile_songs(title: 'God Did', artist: 'Drake', SongLength:'3:34',imagePath: AppImages.GodDid ),
                profile_songs(title: 'Attention', artist: 'Charlie Puth', SongLength:'4:32',imagePath: AppImages.Attention ),
                profile_songs(title: 'Shape Of You', artist: 'Ed Sheeran', SongLength:'4:12',imagePath: AppImages.ShapeOfYou ),
                profile_songs(title: 'Ilomilo', artist: 'Billie Eilish', SongLength:'4:34',imagePath: AppImages.Ilomilo ),
                profile_songs(title: 'Closer', artist: 'Chainsmokers', SongLength:'3:31',imagePath: AppImages.Closer ),
                profile_songs(title: 'Mi Amor', artist: 'SHARN', SongLength:'3:34',imagePath: AppImages.MiAmor),
                profile_songs(title: 'Kaafir', artist: 'SHARN', SongLength:'3:34',imagePath: AppImages.Kaafir),
                profile_songs(title: 'Kaafir', artist: 'SHARN', SongLength:'3:34',imagePath: AppImages.GodDid ),

              ],
            ),
          ),
        ],
      )
    );
  }

  Widget PublicPlaylist_seemore(){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:10,horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('PlayLists',
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold
            ),),
          Text('See More',style:
          TextStyle(fontSize: 14,
              fontWeight: FontWeight.w600),)
        ],
      ),
    );
  }

  Widget profile_songs({
    required String title,
    required String artist,
    required String SongLength,
    required imagePath
  }){
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(imagePath,
                width: 20,
                height: 76,
                fit: BoxFit.cover,),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Text(title,style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),),
                Text(artist,style: TextStyle(
                ),),
              ],
            ),
          ),

          Expanded(
              flex:1,
              child: Text(SongLength)),

          Expanded(
              flex: 2,
              child: SvgPicture.asset(AppVectors.HeartfilledVec)),
        ],
      ),
    );
  }
}
