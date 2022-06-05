import 'package:flutter/material.dart';

class SettingItemWidget extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const SettingItemWidget({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        IconButton(
            onPressed: onTap,
            icon: const Icon(Icons.keyboard_arrow_right_rounded))
      ],
    );
  }
}
