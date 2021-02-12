import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:skiza/app_state/initState.dart';
import 'package:skiza/modules/splash_screen/splash_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => InitState()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "skiza App",
          theme: ThemeData(
              textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
              primaryColor:Color(0xFFCAD827) ,
              visualDensity: VisualDensity.adaptivePlatformDensity),
          home: SafeArea(child: SplashScreen()),
        ));
  }
}