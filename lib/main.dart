import 'package:flutter/material.dart';
import 'package:flutter_login_signup/views/error_page.dart';
import 'package:flutter_login_signup/views/login_page.dart';
import 'package:flutter_login_signup/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
          appBarTheme: const AppBarTheme(
            color: ThemeColors.primaryColor,
          ),
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),
      home: const LoginPage(),
      routes: Routes.routes,
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (context) => const ErrorPage(),
      ),
    );
  }
}
