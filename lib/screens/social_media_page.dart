import 'package:flutter/material.dart';
import 'package:flutter_login_signup/screens/widgets/checkbox_widget.dart';
import 'package:flutter_login_signup/screens/widgets/setting_title_widget.dart';

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
            children: [
              const SettingTitleWidget(
                title: 'Sosyal Media',
                icon: Icons.mediation,
              ),
              const SizedBox(height: 25),
              Row(
                children: const [
                  CheckboxWidget(),
                  SizedBox(width: 10),
                  Text('Google'),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text('Bağlantıyı kes'),
              ),
              const SizedBox(height: 50),
              Row(
                children: const [
                  CheckboxWidget(),
                  SizedBox(width: 10),
                  Text('Facebook'),
                ],
              ),
              const Padding(
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
