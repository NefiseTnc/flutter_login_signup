import 'package:flutter/material.dart';
import 'package:flutter_login_signup/views/widgets/button_widget.dart';
import 'package:flutter_login_signup/views/widgets/textfield_widget.dart';
import 'package:flutter_login_signup/views/widgets/setting_title_widget.dart';

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
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.1),
                            offset: const Offset(0, 10),
                          ),
                        ],
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                          image: AssetImage('assets/images/im_profile.png'),
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green,
                            ),
                            child: const Icon(Icons.edit, color: Colors.white)))
                  ],
                ),
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
