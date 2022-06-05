import 'package:flutter/material.dart';
import 'package:flutter_login_signup/views/widgets/dropdown_button_widget.dart';
import 'package:flutter_login_signup/views/widgets/setting_item_widget.dart';
import 'package:flutter_login_signup/views/widgets/setting_title_widget.dart';
import 'package:flutter_login_signup/views/widgets/switch_button_widget.dart';
import 'package:flutter_login_signup/utils/routes.dart';
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
              _buildAccountSettings(context),
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

  Widget _buildAccountSettings(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 25),
        const SettingTitleWidget(title: 'Hesap', icon: Icons.person),
        const SizedBox(height: 25),
        SettingItemWidget(
            text: 'Profili Düzenle',
            onTap: () {
              Navigator.pushNamed(context, Routes.profileSettingsPage);
            }),
        SettingItemWidget(
            text: 'Şifre Değiştir',
            onTap: () {
              Navigator.pushNamed(context, Routes.changePasswordPage);
            }),
        SettingItemWidget(
            text: 'Sosyal Ağlar',
            onTap: () {
              Navigator.pushNamed(context, Routes.socialMediaPage);
            }),
      ],
    );
  }

  Widget _buildNotificationSettings() {
    return Column(
      children: const [
        SizedBox(height: 25),
        SettingTitleWidget(title: 'Bildirimler', icon: Icons.notifications),
        SizedBox(height: 25),
        SwitchButtonWidget(text: 'Bildirimler'),
      ],
    );
  }

  Widget _buildThemeSettings() {
    return Column(
      children: const [
        SizedBox(height: 25),
        SettingTitleWidget(title: 'Tema', icon: Icons.palette),
        SizedBox(height: 25),
        SwitchButtonWidget(text: 'Karanlık Mod'),
      ],
    );
  }

  Widget _buildMoreSettings(BuildContext context) {
    return Column(
      children: const [
        SizedBox(height: 25),
        SettingTitleWidget(title: 'Diğer', icon: Icons.more_horiz),
        DropDownButtonWidget(text: 'Languege', list: ['Türkçe', 'Engilish']),
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
