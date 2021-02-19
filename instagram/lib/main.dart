import 'package:flutter/material.dart';
import 'package:instagram/Database/Data/Data.dart';
import 'package:instagram/Provider/ThemeProvider.dart';
import 'package:instagram/Screens/Home.dart';
import 'package:instagram/Screens/Splash.dart';
import 'package:instagram/Theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => ThemeProvider(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Data(),
        )
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, themes, child) {
          return MaterialApp(
            key: themes.key,
            debugShowCheckedModeBanner: false,
            navigatorKey: themes.navigatorKey,
            title: ThemesList.appName,
            theme: themes.theme,
            darkTheme: ThemesList.darkTheme,
            home: Splash(),
            routes: {'/home': (ctx) => Home()},
          );
        },
      ),
    );
  }
}
