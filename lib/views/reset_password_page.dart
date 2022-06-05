import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/routes.dart';
import 'widgets/button_widget.dart';
import 'widgets/textfield_widget.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemeColors.primaryColor,
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, Routes.loginPage, (Route<dynamic> route) => false);
            }),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Şifreni mi Unuttun ? ',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                    fontWeight: FontWeight.w500,
                    color: ThemeColors.primaryColor)),
            const Text('Şifrenizi değiştirmek için e-mailinizi giriniz '),
            const SizedBox(height: 50),
            const TextfieldWidget(
              label: 'Email',
              inputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 50),
            ButtonWidget(
                text: 'Gönder',
                onTap: () {
                  Navigator.pushNamed(context, '/changePassword');
                })
          ],
        ),
      )),
    );
  }
}
