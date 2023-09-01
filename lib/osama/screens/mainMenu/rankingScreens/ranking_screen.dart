import 'package:bayfit/controls/text.dart';
import 'package:bayfit/osama/screens/mainMenu/rankingScreens/leaderboards_ranking.dart';
import 'package:bayfit/osama/screens/mainMenu/rankingScreens/personal_ranking.dart';
import 'package:bayfit/utils/app_colors.dart';
import 'package:bayfit/utils/app_images.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';

class RankingScreen extends StatefulWidget {
  const RankingScreen({super.key});

  @override
  State<RankingScreen> createState() => _RankingScreenState();
}

class _RankingScreenState extends State<RankingScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      backgroundColor: AppColors.main_linerGradientBottom,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 60,
          ),
          Image.asset(
            AppImages.gymByeLogo,
            height: 45,
            width: 45,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppImages.calender,
                height: 24,
                width: 24,
              ),
              const SizedBox(
                width: 5,
              ),
              text(context, "January", 25.0,
                  fontFamily: "ArchivoSemiBold", color: AppColors.whiteColor)
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.76,
            child: Theme(
              data: theme.copyWith(
                colorScheme: theme.colorScheme.copyWith(
                  surfaceVariant: Colors.transparent,
                ),
              ),
              child: ContainedTabBarView(
                tabBarProperties: TabBarProperties(
                    height: 36,
                    indicatorColor: Colors.transparent,
                    indicator: BoxDecoration(),
                    margin: const EdgeInsets.only(
                        left: 10, right: 10, bottom: 10, top: 20),
                    background: Container(
                      decoration: BoxDecoration(
                          color: AppColors.SecondaryColor,
                          border: Border.all(
                            color: AppColors.SecondaryColor,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(6))),
                    )),
                tabs: [
                  Padding(
                    padding: const EdgeInsets.only(left: 3),
                    child: Container(
                        decoration: BoxDecoration(
                            color: selectedIndex == 0
                                ? AppColors.SecondaryColor
                                : AppColors.main_linerGradientBottom,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(6.0),
                              bottomLeft: Radius.circular(6.0),
                            )),
                        height: 28,
                        width: double.infinity,
                        child: Center(
                            child: text(context, "Leaderboards", 14.0,
                                color: AppColors.whiteColor))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 3),
                    child: Container(
                        decoration: BoxDecoration(
                            color: selectedIndex == 1
                                ? AppColors.SecondaryColor
                                : AppColors.main_linerGradientBottom,
                            borderRadius: const BorderRadius.only(
                              bottomRight: Radius.circular(6.0),
                              topRight: Radius.circular(6.0),
                            )),
                        height: 28,
                        width: double.infinity,
                        child: Center(
                            child: text(context, "Personal", 14.0,
                                color: AppColors.whiteColor))),
                  )
                ],
                views: const [
                  LeaderBoardScreen(),
                  PersonalRankingScreen(),
                ],
                onChange: (index) => setState(() {
                  selectedIndex = index;
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
