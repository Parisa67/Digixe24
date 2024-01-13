import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'MainScreen2.dart';
import 'main_screen3.dart';
import 'config/change_theme/cubit/theme_cubit.dart';
import 'config/change_theme/theme.dart';
import 'config/static_helper.dart';
import 'features/feature_home/presentation/screens/home_page.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: const Color(0xff000000).withOpacity(0.1),
  ));
  WidgetsFlutterBinding.ensureInitialized();
  //just show in portraitUp
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MultiBlocProvider(
      providers: [BlocProvider<ThemeCubit>(create: (context) => ThemeCubit())],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ThemeCubit theme = BlocProvider.of<ThemeCubit>(context, listen: true);
    return ScreenUtilInit(
        designSize: Size(staticHelper.defaultScreenWidth,
        staticHelper.defaultScreenHeight),
    builder: (_, ctx) {
    return
    MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Flutter Demo',
      theme: theme.isDark ? themeData.darkTheme() : themeData.lightTheme(),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('fa'), // Spanish
      ],
      initialRoute: "/",
      routes: {
       "/first": (final context) => const MainScreen2(),
       "/second": (final context) => const MainScreen3(),
      },
      home: const MyHomePage(),
      // home: const LoginPage(),
    );
  });
  }
}
