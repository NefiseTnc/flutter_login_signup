import 'package:flutter/material.dart';
import 'package:flutter_login_signup/views/home_page.dart';
import 'package:flutter_login_signup/views/profile_settings_page.dart';
import 'package:flutter_login_signup/views/settings_page.dart';
import 'package:flutter_login_signup/views/social_media_page.dart';
import '../views/change_password_page.dart';
import '../views/login_page.dart';
import '../views/register_page.dart';
import '../views/reset_password_page.dart';

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
