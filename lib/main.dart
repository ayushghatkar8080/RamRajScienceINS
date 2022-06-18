import 'package:MainAPP/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Pages/HomePage.dart';
import 'Pages/LoginPage.dart';
import 'utils/theme_provider.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),
      darkTheme: MyThemes.darkTheme,
      initialRoute: MyRoutes.loginroute,
      routes: {
        MyRoutes.homeroute: (context) => const HomePage(),
        MyRoutes.loginroute: (context) => LoginPage(),
      },
    );
  }
}
