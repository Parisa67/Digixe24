import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
class Theme {
  Color primaryColor = const Color(0xff376AED);
  Color contentBoxGreenColor =const Color.fromRGBO(11, 162, 131, 1);
  Color contentBoxRedColor = const Color.fromRGBO(212, 63, 63, 1);
  Color boxRedColor = const Color.fromRGBO(244, 219, 219, 1);
  Color boxGreenColor = const Color.fromRGBO(190, 238, 228, 1);
  Color lightGrayColor = const Color.fromRGBO(132, 139, 153, 1);
  Color darkGrayColor = const Color.fromRGBO(116, 124, 139, 1);
  ThemeData darkTheme(){
    Color primaryTextColor = Colors.white;
    Color secondaryTextColor = darkGrayColor;
ThemeData.dark();
    final darkTheme = ThemeData(
        // fontFamily: 'Dana',
        useMaterial3: true,
      disabledColor:darkGrayColor,
        colorScheme:ColorScheme.dark(
shadow: secondaryTextColor,
          surface: const Color.fromRGBO(19, 21, 25, 1),
          onSurface:Colors.white ,
          brightness: Brightness.dark,
          //button
          primary: primaryColor,
          onPrimary:  Colors.white,
          secondary : Colors.white,
          onSecondary : Colors.black,

            primaryContainer:const Color.fromRGBO(23, 26, 31, 1),
          //   onPrimaryContainer:Colors.deepOrangeAccent,
          //   secondary : const Color(0xff03dac6),
          //   onSecondary : Colors.black,
          //   secondaryContainer:Color(0xffcf6679),
          //   onSecondaryContainer:Color(0xffcf6679),
          //   tertiary:Color(0xffcf6679),
          //   onTertiary:Color(0xffcf6679),
          //   tertiaryContainer:Color(0xffcf6679),
          //   onTertiaryContainer:Color(0xffcf6679),
          //   error : const Color(0xffcf6679),
          //   onError : Colors.black,
            // errorContainer:,
            // onErrorContainer:,
            background : const Color.fromRGBO(19, 21, 25, 1),
            onBackground : Colors.white,
          //   surfaceVariant: const Color(0xff03dac6),
          //   onSurfaceVariant: const Color(0xff03dac6),
          //   outline: const Color(0xff03dac6),
          //   outlineVariant: const Color(0xff03dac6),
          //   shadow: const Color(0xff03dac6),
          //   scrim:Color(0xffcf6679),
          //   inverseSurface:Color(0xffcf6679),
          //   onInverseSurface:Color(0xffcf6679),
          //   inversePrimary:Color(0xffcf6679),
          //   surfaceTint:Color(0xffcf6679),
          //   primaryVariant : const Color(0xff3700B3),
          //   secondaryVariant : const Color(0xff03dac6)

        ),
        textTheme:  TextTheme(
            titleLarge: TextStyle(
              fontFamily: 'Dana',
              fontWeight: FontWeight.w800,
                color: primaryTextColor,
                fontSize: ScreenUtil().setSp(18),

            ),
        titleMedium: TextStyle(
            fontFamily: 'Dana',
            fontWeight: FontWeight.w600,
            color: primaryTextColor,
            fontSize: ScreenUtil().setSp(14)
        ),
          titleSmall: TextStyle(
            fontFamily: 'Dana',
            fontWeight: FontWeight.w600,
              color: primaryTextColor,
              fontSize: ScreenUtil().setSp(12),
          ),
            bodySmall: TextStyle(
                fontFamily: 'Dana',
                fontWeight: FontWeight.w200,
                color: secondaryTextColor,
                fontSize: ScreenUtil().setSp(8)

          ),
          labelSmall: TextStyle(
              fontFamily: 'Dana',
              fontWeight: FontWeight.w400,
              color: contentBoxGreenColor,
              fontSize: ScreenUtil().setSp(10)

          ),
          headlineSmall: TextStyle(
              fontFamily: 'Dana',
              fontWeight: FontWeight.w400,
              color: primaryTextColor,
              fontSize: ScreenUtil().setSp(10)

          ),
          headlineMedium: TextStyle(
              fontFamily: 'Dana',
              fontWeight: FontWeight.w400,
              color: primaryTextColor,
              fontSize: ScreenUtil().setSp(10)

          ),


        ));
    return darkTheme ;
  }
  ThemeData lightTheme(){
    Color primaryTextColor = const Color.fromRGBO(19, 21, 25, 1);
    Color secondaryTextColor = const Color.fromRGBO(132, 139, 153, 1);

    final lightTheme = ThemeData(
        // fontFamily: 'Dana',
        useMaterial3: true,
        disabledColor:lightGrayColor,
        colorScheme:ColorScheme.light(
          shadow: darkGrayColor,
          surface: Colors.white ,
          onSurface:const Color.fromRGBO(19, 21, 25, 1),
          brightness: Brightness.light,
          //button
          primary: primaryColor,
          onPrimary:  Colors.white,

          background :const Color.fromRGBO(247, 249, 251, 1),
          onBackground : const Color.fromRGBO(19, 21, 25, 1),
            secondary : const Color.fromRGBO(132, 139, 153, 1),
            onSecondary : Colors.black,
          primaryContainer:const Color.fromRGBO(255, 255, 255, 1),

        ),
        textTheme:  TextTheme(

          titleLarge: TextStyle(
             fontFamily: 'Dana',
              fontWeight: FontWeight.w800,
              color: primaryTextColor,
              fontSize: ScreenUtil().setSp(18)
          ),
          titleMedium: TextStyle(
              fontFamily: 'Dana',
              fontWeight: FontWeight.w600,
              color: primaryTextColor,
              fontSize: ScreenUtil().setSp(14)
          ),
          titleSmall: TextStyle(
              fontFamily: 'Dana',
              fontWeight: FontWeight.w600,
              color: primaryTextColor,
            fontSize: ScreenUtil().setSp(12)
            ),
          bodySmall: TextStyle(
              fontFamily: 'Dana',
              fontWeight: FontWeight.w200,
              color: secondaryTextColor,
              fontSize: ScreenUtil().setSp(8)

          ),
          labelSmall: TextStyle(
              fontFamily: 'Dana',
              fontWeight: FontWeight.w400,
              color: contentBoxGreenColor,
              fontSize: ScreenUtil().setSp(10)

          ),
          headlineSmall: TextStyle(
              fontFamily: 'Dana',
              fontWeight: FontWeight.w400,
              color: lightGrayColor,
              fontSize: ScreenUtil().setSp(10)

          ),
          headlineMedium: TextStyle(
              fontFamily: 'Dana',
              fontWeight: FontWeight.w400,
              color: primaryTextColor,
              fontSize: ScreenUtil().setSp(10)

          ),


        )

    );
    return lightTheme;
  }
  }

Theme themeData = Theme();
