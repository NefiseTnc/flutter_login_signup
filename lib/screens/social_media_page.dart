import 'package:flutter/material.dart';
import 'package:flutter_login_signup/screens/widgets/custom_checkbox.dart';
import 'package:flutter_login_signup/screens/widgets/setting_title.dart';

class SocialMediaPage extends StatelessWidget {
  const SocialMediaPage({Key? key}) : super(key: key);

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
            children: const [
              SettingTitle(
                title: 'Sosyal Media',
                icon: Icons.mediation,
              ),
              SizedBox(height: 25),
              CustomCheckbox(text: 'Google'),
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text('Bağlantıyı kes'),
              ),
              SizedBox(height: 50),
              CustomCheckbox(text: 'Facebook'),
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text('Hesabı bağla'),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
