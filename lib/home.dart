import 'package:book/Screens/cart_screen.dart';
import 'package:book/Screens/community_screen.dart';
import 'package:book/Screens/explore_screen.dart';
import 'package:book/Screens/lib_screen.dart';
import 'package:book/gen/assets.gen.dart';
import 'package:book/res/colors.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int selectedIndexBottomSheetNavigation = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    selectedIndexBottomSheetNavigation =
                        IndexScreenBottomNavigation.libScreen;
                  });
                },
                icon: selectedIndexBottomSheetNavigation ==
                        IndexScreenBottomNavigation.libScreen
                    ? Assets.icons.ionLibrarySelected.svg()
                    : Assets.icons.ionLibrary.svg(),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: Text(
                  'My Library',
                  style: TextStyle(
                      color: selectedIndexBottomSheetNavigation ==
                              IndexScreenBottomNavigation.libScreen
                          ? MyColor.selectedTextBottomNavigation
                          : MyColor.defaultTextBottomNavigation),
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    selectedIndexBottomSheetNavigation =
                        IndexScreenBottomNavigation.exploreScreen;
                  });
                },
                icon: selectedIndexBottomSheetNavigation ==
                        IndexScreenBottomNavigation.exploreScreen
                    ? Assets.icons.fluentBookSelected.svg()
                    : Assets.icons.fluentBook20Filled.svg(),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: Text(
                  'Explore',
                  style: TextStyle(
                      color: selectedIndexBottomSheetNavigation ==
                              IndexScreenBottomNavigation.exploreScreen
                          ? MyColor.selectedTextBottomNavigation
                          : MyColor.defaultTextBottomNavigation),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      selectedIndexBottomSheetNavigation =
                          IndexScreenBottomNavigation.cartScreen;
                    });
                  },
                  icon: selectedIndexBottomSheetNavigation ==
                          IndexScreenBottomNavigation.cartScreen
                      ? Assets.icons.mdiCartVariantSelected.svg()
                      : Assets.icons.mdiCartVariant.svg()),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: Text(
                  'Cart',
                  style: TextStyle(
                      color: selectedIndexBottomSheetNavigation ==
                              IndexScreenBottomNavigation.cartScreen
                          ? MyColor.selectedTextBottomNavigation
                          : MyColor.defaultTextBottomNavigation),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    selectedIndexBottomSheetNavigation =
                        IndexScreenBottomNavigation.communityScreen;
                  });
                },
                icon: selectedIndexBottomSheetNavigation ==
                        IndexScreenBottomNavigation.communityScreen
                    ? Assets.icons.fluentPeopleCommunitySelected.svg()
                    : Assets.icons.fluentPeopleCommunity16Filled.svg(),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: Text(
                  'Community',
                  style: TextStyle(
                      color: selectedIndexBottomSheetNavigation ==
                              IndexScreenBottomNavigation.communityScreen
                          ? MyColor.selectedTextBottomNavigation
                          : MyColor.defaultTextBottomNavigation),
                ),
              ),
            ],
          ),
        ],
      ),
      body: SafeArea(
          child: IndexedStack(
        index: selectedIndexBottomSheetNavigation,
        children: const [
          LibScreen(),
          ExploreScreen(),
          CommunityScreen(),
          CartScreen(),
        ],
      )),
    );
  }
}

abstract class IndexScreenBottomNavigation {
  static int libScreen = 0;
  static int exploreScreen = 1;
  static int communityScreen = 2;
  static int cartScreen = 3;
}