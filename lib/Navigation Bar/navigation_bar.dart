import 'package:flutter/material.dart';
import 'package:flutter_basics/presentation/Fav%20Page/Fav%20Page.dart';
import 'package:flutter_basics/presentation/Profile%20Page/profile_page.dart';
import 'package:flutter_basics/presentation/choose%20mode/pages/home_page.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../core/configs/assets/app_vectors.dart';
import '../core/configs/themes/app_colors.dart';

class NavigationBarPage extends StatefulWidget {
  const NavigationBarPage({Key? key}) : super(key: key);

  @override
  State<NavigationBarPage> createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),    
    HomePage(),
    FavPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  _pages[_currentIndex],
      bottomNavigationBar: NavigationBar(
        height: 50,
        selectedIndex: _currentIndex,
        onDestinationSelected: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: Color(0xffe8e7e7),
        indicatorShape: CircleBorder(),
        indicatorColor: Colors.transparent,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        destinations: [
          NavigationDestination(
            icon: SvgPicture.asset(AppVectors.HomeNav),
            selectedIcon: SvgPicture.asset(AppVectors.HomeNavGreen),
            label: 'home',
          ),

          NavigationDestination(
            icon: SvgPicture.asset(AppVectors.ExploreNav),
            label: 'explore',
          ),
          NavigationDestination(
            icon: SvgPicture.asset(AppVectors.HeartNav),
            selectedIcon: SvgPicture.asset(AppVectors.HeartNavGreen),
            label: 'Fav',
          ),
          NavigationDestination(
            icon: SvgPicture.asset(AppVectors.ProfileNav),
            selectedIcon: SvgPicture.asset(AppVectors.ProfileNavGreen),
            label: 'profile',
          ),
        ],
      ),
    );
  }
}
