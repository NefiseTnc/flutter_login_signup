import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../utils/routes.dart';
import 'widgets/button_widget.dart';
import 'widgets/checkbox_widget.dart';
import 'widgets/textfield_widget.dart';
import 'widgets/social_media_button_widget.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hesap Oluştur',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontWeight: FontWeight.w500,
                      color: ThemeColors.primaryColor)),
              Row(
                children: [
                  const Text('Zaten üye misiniz? '),
                  const SizedBox(width: 2),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(context,
                          Routes.loginPage, (Route<dynamic> route) => false);
                    },
                    child: Text('Giriş Yapın',
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                              color: ThemeColors.primaryColor,
                              decoration: TextDecoration.underline,
                            )),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              const TextfieldWidget(label: 'Adınız'),
              const SizedBox(height: 10),
              const TextfieldWidget(label: 'Soyadınız'),
              const SizedBox(height: 10),
              const TextfieldWidget(
                label: 'Email',
                inputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 10),
              const TextfieldWidget(
                label: 'Şifre',
                isPass: true,
              ),
              const SizedBox(height: 10),
              const TextfieldWidget(
                label: 'Şifre(Tekrar)',
                isPass: true,
              ),
              const SizedBox(height: 25),
              Row(
                children: const [
                  CheckboxWidget(),
                  SizedBox(width: 5),
                  Expanded(
                      child: Text(
                          'Şartlar ve Koşulları Okudum ve Kabul Ediyorum')),
                ],
              ),
              const SizedBox(height: 50),
              ButtonWidget(text: 'Kaydol', onTap: () {}),
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
}
