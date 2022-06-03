import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_signup/utils/colors.dart';

class SwitchButton extends StatefulWidget {
  final String text;
  const SwitchButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool _isActive = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.text,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
                value: _isActive,
                activeColor: ThemeColors.primaryColor,
                onChanged: (value) {
                  setState(() {
                    _isActive = !_isActive;
                  });
                }))
      ],
    );
  }
}
