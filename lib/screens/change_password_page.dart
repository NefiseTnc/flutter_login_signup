import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/routes.dart';
import 'widgets/custom_button.dart';
import 'widgets/custom_textfield.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

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
            Text('Şifrenizi Değiştirin ',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                    fontWeight: FontWeight.w500,
                    color: ThemeColors.primaryColor)),
            const SizedBox(height: 50),
            const CustomTextfield(
              label: 'Yeni Şifre',
              isPass: true,
            ),
            const SizedBox(height: 10),
            const CustomTextfield(
              label: 'Yeni Şifre(Tekrar)',
              isPass: true,
            ),
            const SizedBox(height: 50),
            CustomButton(text: 'Kaydet', onTap: () {})
          ],
        ),
      )),
    );
  }
}
