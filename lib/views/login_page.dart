import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/routes.dart';
import 'widgets/button_widget.dart';
import 'widgets/checkbox_widget.dart';
import 'widgets/textfield_widget.dart';
import 'widgets/social_media_button_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Kullanıcı Girişi',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontWeight: FontWeight.w500,
                      color: ThemeColors.primaryColor)),
              Row(
                children: [
                  const Text('Üye Değil misiniz? '),
                  const SizedBox(width: 2),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.registerPage);
                    },
                    child: Text('Üye Olun',
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                              color: ThemeColors.primaryColor,
                              decoration: TextDecoration.underline,
                            )),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              const TextfieldWidget(
                label: 'Email',
                inputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 10),
              const TextfieldWidget(label: 'Şifre', isPass: true),
              const SizedBox(height: 10),
              _buildResetPasswordText(context),
              const SizedBox(height: 25),
              Row(
                children: const [
                  CheckboxWidget(),
                  SizedBox(width: 10),
                  Text('Beni Hatırla'),
                ],
              ),
              const SizedBox(height: 50),
              ButtonWidget(
                  text: 'Giriş Yap',
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, Routes.homePage, (route) => false);
                  }),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  'veya',
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        color: ThemeColors.primaryColor,
                      ),
                ),
              ),
              const SizedBox(height: 25),
              SocialMediaButtonWidget(
                imageUrl: 'assets/icons/ic_facebook.png',
                text: 'Facebook ile giriş yap',
                color: Colors.blue,
                onTap: () {},
              ),
              const SizedBox(height: 15),
              SocialMediaButtonWidget(
                imageUrl: 'assets/icons/ic_google.png',
                text: 'Google ile giriş yap',
                color: Colors.orange,
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildResetPasswordText(BuildContext context) {
    return GestureDetector(
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
    );
  }
}
