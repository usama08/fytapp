// ignore_for_file: file_names

import 'package:bayfit/osama/profile/profile_screen.dart';
import 'package:bayfit/osama/screens/mainMenu/chat_screen.dart';
import 'package:bayfit/osama/screens/mainMenu/home_screen.dart';
import 'package:bayfit/osama/screens/mainMenu/profile_screen.dart';
import 'package:bayfit/osama/screens/mainMenu/rankingScreens/ranking_screen.dart';
import 'package:bayfit/utils/app_colors.dart';
import 'package:bayfit/utils/app_images.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final screens = [
    const HomeScreen(),
    const RankingScreen(),
    const ChatScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.main_linerGradientBottom,
      body: Center(child: IndexedStack(index: _selectedIndex, children: screens)
          //  child: screens.elementAt(_selectedIndex),
          ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: AppColors.bottomNavigationbg,
          primaryColor: AppColors.bottomNavigationbg,
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
          child: BottomNavigationBar(
            backgroundColor: AppColors.bottomNavigationbg,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: _selectedIndex == 0
                    ? Image.asset(
                        AppImages.homeb1,
                        width: 24,
                        height: 24,
                        color: AppColors.primaryColor,
                      )
                    : Image.asset(
                        AppImages.homeb1,
                        width: 24,
                        height: 24,
                      ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: _selectedIndex == 1
                    ? Image.asset(
                        AppImages.rankb2,
                        width: 24,
                        height: 24,
                        color: AppColors.primaryColor,
                      )
                    : Image.asset(
                        AppImages.rankb2,
                        width: 24,
                        height: 24,
                      ),
                label: 'Rank',
              ),
              BottomNavigationBarItem(
                icon: _selectedIndex == 2
                    ? Image.asset(
                        AppImages.chatb3,
                        width: 24,
                        height: 24,
                        color: AppColors.primaryColor,
                      )
                    : Image.asset(
                        AppImages.chatb3,
                        width: 24,
                        height: 24,
                      ),
                label: 'Chat',
              ),
              BottomNavigationBarItem(
                icon: _selectedIndex == 3
                    ? Image.asset(
                        AppImages.profileb4,
                        width: 24,
                        height: 24,
                        color: AppColors.primaryColor,
                      )
                    : Image.asset(
                        AppImages.profileb4,
                        width: 24,
                        height: 24,
                      ),
                label: 'Profile',
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
