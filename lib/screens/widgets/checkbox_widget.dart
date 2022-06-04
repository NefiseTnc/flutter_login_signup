import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<CheckboxWidget> createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isChecked = !_isChecked;
        });
      },
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(4),
          ),
          border: Border.all(color: ThemeColors.secondaryColor),
        ),
        child: _isChecked
            ? const Icon(
                Icons.check,
                size: 17,
                color: Colors.green,
              )
            : null,
      ),
    );
  }
}
