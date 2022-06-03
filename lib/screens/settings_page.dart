import 'package:flutter/material.dart';
import 'package:flutter_login_signup/screens/widgets/custom_button.dart';
import 'package:flutter_login_signup/screens/widgets/custom_dropdown_button.dart';
import 'package:flutter_login_signup/screens/widgets/setting_item.dart';
import 'package:flutter_login_signup/screens/widgets/setting_title.dart';
import 'package:flutter_login_signup/screens/widgets/switch_button.dart';
import '../utils/colors.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

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
              _buildAppbar(context),
              _buildAccountSettings(),
              _buildNotificationSettings(),
              _buildThemeSettings(),
              _buildMoreSettings(context),
              _buildLogoutButton(context)
            ],
          ),
        ),
      )),
    );
  }

  Widget _buildAppbar(BuildContext context) {
    return Text('Ayarlar',
        style: Theme.of(context).textTheme.headline4!.copyWith(
            fontWeight: FontWeight.w500, color: ThemeColors.primaryColor));
  }

  Widget _buildAccountSettings() {
    return Column(
      children: [
        const SizedBox(height: 25),
        const SettingTitle(title: 'Hesap', icon: Icons.person),
        const SizedBox(height: 25),
        SettingItem(text: 'Profili Düzenle', onTap: () {}),
        SettingItem(text: 'Şifre Değiştir', onTap: () {}),
        SettingItem(text: 'Sosyal Ağlar', onTap: () {}),
      ],
    );
  }

  Widget _buildNotificationSettings() {
    return Column(
      children: const [
        SizedBox(height: 25),
        SettingTitle(title: 'Bildirimler', icon: Icons.notifications),
        SizedBox(height: 25),
        SwitchButton(text: 'Bildirimler'),
      ],
    );
  }

  Widget _buildThemeSettings() {
    return Column(
      children: [
        const SizedBox(height: 25),
        const SettingTitle(title: 'Tema', icon: Icons.palette),
        const SizedBox(height: 25),
        SettingItem(text: 'Temayı Özelleştir', onTap: () {}),
        const SwitchButton(text: 'Karanlık Mod'),
      ],
    );
  }

  Widget _buildMoreSettings(BuildContext context) {
    return Column(
      children: const [
        SizedBox(height: 25),
        SettingTitle(title: 'Diğer', icon: Icons.more_horiz),
        CustomDropDownButton(text: 'Languege', list: ['Türkçe', 'Engilish']),
        SizedBox(height: 25),
      ],
    );
  }

  Widget _buildLogoutButton(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.logout),
      ),
      Text(
        'Oturumu Kapat',
        style: Theme.of(context).textTheme.subtitle2,
      ),
    ]);
  }
}
