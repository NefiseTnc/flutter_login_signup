import 'package:flutter/material.dart';
import 'package:flutter_login_signup/screens/home_page.dart';
import 'package:flutter_login_signup/screens/profile_settings_page.dart';
import 'package:flutter_login_signup/screens/settings_page.dart';
import 'package:flutter_login_signup/screens/social_media_page.dart';
import '../screens/change_password_page.dart';
import '../screens/login_page.dart';
import '../screens/register_page.dart';
import '../screens/reset_password_page.dart';

class Routes {
  static const String loginPage = '/loginPage';
  static const String registerPage = '/registerPage';
  static const String resetPasswordPage = '/resetPasswordPage';
  static const String changePasswordPage = '/changePasswordPage';

  static const String homePage = '/homePage';

  static const String settingsPage = '/settingsPage';
  static const String profileSettingsPage = '/profileSettingsPage';
  static const String socialMediaPage = '/socialMediaPage';
  static const String themeSettingPage = '/themeSettingPage';

  static Map<String, Widget Function(BuildContext)> routes = {
    Routes.loginPage: (_) => const LoginPage(),
    Routes.registerPage: (_) => const RegisterPage(),
    Routes.resetPasswordPage: (_) => const ResetPasswordPage(),
    Routes.changePasswordPage: (_) => const ChangePasswordPage(),
    Routes.homePage: (_) => const HomePage(),
    Routes.settingsPage: (_) => const SettingPage(),
    Routes.profileSettingsPage: (_) => const ProfileSettingsPage(),
    Routes.socialMediaPage: (_) => const SocialMediaPage(),
  };
}
