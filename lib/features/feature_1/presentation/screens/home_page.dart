import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../feature_login/presentation/screens/login_page.dart';
import 'dashboard.dart';
import '../../../../MainScreen2.dart';
import '../../../../MainScreen3.dart';
import '../../../../MainScreen4.dart';
import '../../../../MainScreen5.dart';
import '../../../../config/change_theme/cubit/theme_cubit.dart';
import '../../../../config/static_helper.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  PersistentTabController controller = PersistentTabController(initialIndex: 0);
  // _controller = PersistentTabController(initialIndex: 0);
  List<Widget> _buildScreens() {
    return [
      const Dashboard(),
      const LoginPage(),
      const MainScreen3(),
      const MainScreen4(),
      const MainScreen5(),
    ];
  }
  List<PersistentBottomNavBarItem> _navBarsItems(ThemeData themData) {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.home),
        title: ("خانه"),
        activeColorPrimary: themData.colorScheme.primary,
        inactiveColorPrimary: themData.colorScheme.secondary,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.settings),
        title: ("بازارها"),
        activeColorPrimary: themData.colorScheme.primary,
        inactiveColorPrimary: themData.colorScheme.secondary,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.settings),
        title: ("خرید و فروش"),
        activeColorPrimary: themData.colorScheme.primary,
        inactiveColorPrimary: themData.colorScheme.secondary,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.settings),
        title: ("کیف پول"),
        activeColorPrimary: themData.colorScheme.primary,
        inactiveColorPrimary: themData.colorScheme.secondary,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.settings),
        title: ("حساب کاربری"),
        activeColorPrimary: themData.colorScheme.primary,
        inactiveColorPrimary: themData.colorScheme.secondary,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    ThemeCubit theme = BlocProvider.of<ThemeCubit>(context, listen: false);
    final themData = Theme.of(context);


    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
        appBar: AppBar(
          backgroundColor:Colors.transparent,
          title:Image.asset(
            "assets/images/logoFa.png",
            width: ScreenUtil().radius(130),
            height: ScreenUtil().radius(20),
            // color: themData.colorScheme.onBackground,
          ),
          actions: [

            IconButton(onPressed: (){theme.changeTheme();}, icon: theme.isDark ? const Icon(Icons.shield_moon_outlined) : const Icon(Icons.sunny)),
            IconButton(onPressed: (){theme.changeTheme();}, icon:  const Icon(Icons.account_circle_rounded,color: Colors.grey,))
          ],
        ),
        body:  PersistentTabView(
          context,
          controller: controller,
          screens: _buildScreens(),
          items: _navBarsItems( themData),
          confineInSafeArea: true,
           backgroundColor: themData.colorScheme.background, // Default is Colors.white.
          // Default is Colors.white.
          handleAndroidBackButtonPress: true, // Default is true.
          resizeToAvoidBottomInset: false, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
          stateManagement: true, // Default is true.
          hideNavigationBarWhenKeyboardShows: true,
          popAllScreensOnTapOfSelectedTab: true,
          popActionScreens: PopActionScreensType.all,
          itemAnimationProperties: const ItemAnimationProperties( // Navigation Bar's items animation properties.
            duration: Duration(milliseconds: 200),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: const ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
            // animateTabTransition: true,
            // curve: Curves.ease,
            // duration: Duration(milliseconds: 200),
          ),
          navBarStyle: NavBarStyle.style6, // Choose the nav bar style with this property.
        ),
          // bottomNavigationBar: SizedBox(
          //     height: ScreenUtil().setHeight(56),
          //     child: BottomAppBar(
          //       elevation: 0.0,
          //       color: Colors.white,
          //       shape: const CircularNotchedRectangle(),
          //       child: Container(
          //         decoration: BoxDecoration(
          //           color: Colors.red,
          //           // boxShadow: [
          //           //   colorHelper.getboxShadow(ShadowType.verticalTop)
          //           // ],
          //         ),
          //         padding:EdgeInsets.zero,
          //         child: Row(
          //           mainAxisSize: MainAxisSize.max,
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           children: _buildScreens(),
          //         ),
          //       ),
          //     )),
          //

        ));


  }
}