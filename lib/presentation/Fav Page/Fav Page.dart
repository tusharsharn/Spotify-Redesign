import 'package:flutter/material.dart';
import 'package:flutter_basics/core/configs/assets/app_images.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/configs/assets/app_vectors.dart';

class FavPage extends StatelessWidget {
  const FavPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Color(0xffe8e7e7),
        body: Column(
          children: [
            Container(
              height: 220,
              width: 400,

              decoration: BoxDecoration(
                 image: DecorationImage(image: AssetImage(AppImages.FavTopBillie),fit: BoxFit.cover,),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60),bottomRight: Radius.circular(60))
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 102,
              width: 250,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Billie Eilish',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  SizedBox(height: 4,),
                  Text(' 2 album , 67 tracks',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
                  Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis adipiscing vestibulum orci enim, nascetur vitae ',textAlign: TextAlign.center,),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 4,bottom: 7),
                  child: Text('Albums',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                )
              ],
            ),
            SizedBox(
              height: 176,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Albums(title: 'Bad Guy',  imagePath: AppImages.billieBadGuy),
                  Albums(title: 'Scorpion',  imagePath: AppImages.drakeScorpion),
                  Albums(title: 'When We Fall Again',  imagePath: AppImages.billieWhenWeFall),
                  Albums(title: 'Bad Guy',  imagePath: AppImages.billieBadGuy),
                ],
              ),
            ),
            PublicPlaylist_seemore(),
            SizedBox(
              height: 147,
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 17),
                scrollDirection: Axis.vertical,
                children: [
                  profile_songs(title: 'As It Was', artist: 'Harry Styles', SongLength: '5:34'),
                  profile_songs(title: 'God Did', artist: 'Drake', SongLength:'3:34'),
                  profile_songs(title: 'Attention', artist: 'Charlie Puth', SongLength:'4:32'),
                  profile_songs(title: 'Shape Of You', artist: 'Ed Sheeran', SongLength:'4:12'),
                  profile_songs(title: 'Ilomilo', artist: 'Billie Eilish', SongLength:'4:34'),
                  profile_songs(title: 'Closer', artist: 'Chainsmokers', SongLength:'3:31'),
                  profile_songs(title: 'Mi Amor', artist: 'SHARN', SongLength:'3:34'),
                  profile_songs(title: 'Kaafir', artist: 'SHARN', SongLength:'3:34'),
                  profile_songs(title: 'Kaafir', artist: 'SHARN', SongLength:'3:34'),

                ],
              ),
            ),
          ],
        )
    );
  }

  Widget PublicPlaylist_seemore(){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:4,horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Songs',
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
    required String SongLength
  }){
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child:  Container(
              child: Padding(padding:EdgeInsets.all(6),
                  child: IconButton(onPressed:(){}, icon:SvgPicture.asset(AppVectors.PlayiconVec))),
              decoration: BoxDecoration(shape: BoxShape.circle,
                color: Color(0xffc8c7c7),),
              height: 40,
              width: 40,
            ),
          ),
          Expanded(
            flex: 2,
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
              flex:1,
              child: SvgPicture.asset(AppVectors.HeartNav)),
        ],
      ),
    );
  }
  Widget Albums ({required String title,
    required String imagePath,}){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(imagePath,
              width: 150,
              height: 150,
              fit: BoxFit.cover,),
          ),
          SizedBox(height: 8,),
          Text(title,style: TextStyle(
              fontWeight: FontWeight.bold
          ),),
        ],
      ),
    );

  }
}