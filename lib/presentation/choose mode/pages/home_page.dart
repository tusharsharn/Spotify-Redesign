import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_basics/core/configs/assets/app_images.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/configs/assets/app_vectors.dart';
import '../../../core/configs/themes/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length:4,vsync:this);
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF2F2F2),
        title:  SvgPicture.asset(AppVectors.logo,
          height: 40,
          width: 40,) ,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          homepageTop(),
          _tabBarNews(),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                songItem(title: 'Bad Guy', artist: 'Billie Eilish', imagePath: AppImages.billieBadGuy),
                songItem(title: 'Scorpion', artist: 'Drake', imagePath: AppImages.drakeScorpion),
                songItem(title: 'When We Fall Again', artist: 'Billie Eilish', imagePath: AppImages.billieWhenWeFall),
                songItem(title: 'Bad Guy', artist: 'Billie Eilish', imagePath: AppImages.billieBadGuy),
              ],
            ),
          ),
          playlist_seemore(),

          SizedBox(
            height: 159,
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 17),
              scrollDirection: Axis.vertical,
              children: [
                _playlistsongs(title: 'As It Was', artist: 'Harry Styles', SongLength: '5:34'),
                _playlistsongs(title: 'God Did', artist: 'Drake', SongLength:'3:34'),
                _playlistsongs(title: 'Attention', artist: 'Charlie Puth', SongLength:'4:32'),
                _playlistsongs(title: 'Shape Of You', artist: 'Ed Sheeran', SongLength:'4:12'),
                _playlistsongs(title: 'Ilomilo', artist: 'Billie Eilish', SongLength:'4:34'),
                _playlistsongs(title: 'Closer', artist: 'Chainsmokers', SongLength:'3:31'),
                _playlistsongs(title: 'Mi Amor', artist: 'SHARN', SongLength:'3:34'),
                _playlistsongs(title: 'Kaafir', artist: 'SHARN', SongLength:'3:34')

              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget homepageTop(){
    return Center(
      child: Container(
        height: 180,
          child: Stack(children:
          [
            Align(
              alignment: Alignment.bottomCenter,
                child: SvgPicture.asset(AppVectors.homePageTop)),
            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Align(
                alignment: Alignment.bottomRight,
                  child: Image.asset(AppImages.BillieHomePage,)),
            )
          ]),
        ),

    );
  }

  Widget _tabBarNews (){
    return TabBar(
     padding: EdgeInsets.symmetric(vertical: 15),
        controller: _tabController,
        labelColor: Colors.black,
         isScrollable: false,
        unselectedLabelColor: Colors.grey,
        indicatorColor:Colors.green,
        dividerColor: Colors.transparent,
        tabs: [
      Text('News',
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 15,
      ),),
      Text('Artists' ,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 15,
        ),),
      Text('Videos' ,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 15,
        ),),
      Text('Podcasts' ,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 15,
        ),),
    ]);
  }

  Widget songItem ({required String title,
    required String artist,
    required String imagePath,}){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(imagePath,
                width: 150,
                height: 150,
                fit: BoxFit.cover,),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Transform.translate(
                  offset: Offset(110, 120),
                  child: Container(
                    height: 40,
                    width: 40,
                    child: Padding(padding: EdgeInsets.all(6)
                        ,child: IconButton(onPressed: (){}, icon: SvgPicture.asset(AppVectors.PlayiconVec))),
                    decoration: BoxDecoration(
                      color: Color(0xffE6E6E6),
                      shape: BoxShape.circle
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 8,),
          Text(title,style: TextStyle(
            fontWeight: FontWeight.bold
          ),),
          Text(artist,style: TextStyle(
            color: Colors.grey
          ),),
        ],
      ),
    );

  }
  
  Widget playlist_seemore(){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:10,horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('PlayList',
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

  Widget _playlistsongs({
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
            child: Container(
              child: Padding(padding:EdgeInsets.all(6),
                  child: IconButton(onPressed:(){}, icon:SvgPicture.asset(AppVectors.PlayiconVec))),
              decoration: BoxDecoration(shape: BoxShape.circle,
                color: Color(0xffc8c7c7),),
              height: 40,
              width: 40,
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
              flex:2,
              child: Text(SongLength)),

          Expanded(
            flex: 1,
              child: SvgPicture.asset(AppVectors.HeartfilledVec)),
        ],
      ),
    );
  }
}

