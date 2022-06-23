import 'package:MainAPP/Widgets/themes.dart';
import 'package:MainAPP/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Pages/HomePage.dart';
import 'Pages/LoginPage.dart';
import 'Widgets/themes.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: Mytheme.LightTheme(context),
      darkTheme: Mytheme.DarkTheme(context),
      initialRoute: MyRoutes.loginroute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeroute: (context) => HomePage(),
        MyRoutes.loginroute: (context) => LoginPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
