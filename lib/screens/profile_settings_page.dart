import 'package:flutter/material.dart';
import 'package:flutter_login_signup/screens/widgets/button_widget.dart';
import 'package:flutter_login_signup/screens/widgets/textfield_widget.dart';
import 'package:flutter_login_signup/screens/widgets/setting_title_widget.dart';
import 'package:flutter_login_signup/utils/colors.dart';

import '../utils/routes.dart';

class ProfileSettingsPage extends StatelessWidget {
  const ProfileSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 150,
                color: ThemeColors.secondaryColor,
              ),
              const SizedBox(height: 15),
              const SettingTitleWidget(title: 'Hesap', icon: Icons.person),
              const SizedBox(height: 15),
              const TextfieldWidget(label: 'Kullanıcı Adı'),
              const TextfieldWidget(label: 'Soyadınız'),
              const TextfieldWidget(label: 'Emailiniz'),
              const TextfieldWidget(label: 'Şifre'),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Routes.resetPasswordPage);
                },
                child: Text(
                  'Şifremi Unuttum?',
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(decoration: TextDecoration.underline),
                ),
              ),
              const SizedBox(height: 50),
              ButtonWidget(text: 'İptal', onTap: () {}),
              const SizedBox(height: 15),
              ButtonWidget(text: 'Kaydet', onTap: () {}),
            ],
          ),
        ),
      )),
    );
  }
}
