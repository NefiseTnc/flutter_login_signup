import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/change_password_page.dart';
import 'screens/login_page.dart';
import 'screens/register_page.dart';
import 'screens/reset_password_page.dart';
import 'utils/routes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),
      home: const LoginPage(),
      routes: {
        Routes.loginPage: (_) => const LoginPage(),
        Routes.registerPage: (_) => const RegisterPage(),
        Routes.resetPasswordPage: (_) => const ResetPasswordPage(),
        Routes.changePasswordPage: (_) => const ChangePasswordPage(),
      },
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: const Text('Error'),
          ),
          body: Center(
            child: Text(
              'Sayfa Bulunamadı',
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
        ),
      ),
    );
  }
}
