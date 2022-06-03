import 'package:flutter/material.dart';
import 'package:flutter_login_signup/utils/colors.dart';

class SettingTitle extends StatelessWidget {
  final String title;
  final IconData icon;
  const SettingTitle({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: ThemeColors.secondaryColor,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: ThemeColors.primaryColor),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        const Divider(
          color: ThemeColors.primaryColor,
          height: 2,
        )
      ],
    );
  }
}
