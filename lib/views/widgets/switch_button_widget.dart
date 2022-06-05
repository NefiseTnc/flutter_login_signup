import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_signup/utils/colors.dart';

class SwitchButtonWidget extends StatefulWidget {
  final String text;
  const SwitchButtonWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  State<SwitchButtonWidget> createState() => _SwitchButtonWidgetState();
}

class _SwitchButtonWidgetState extends State<SwitchButtonWidget> {
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
