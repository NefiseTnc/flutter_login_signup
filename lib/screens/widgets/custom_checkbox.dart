import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class CustomCheckbox extends StatefulWidget {
  final String text;
  const CustomCheckbox({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
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
        ),
        const SizedBox(width: 3),
        Text(
          widget.text,
          style: const TextStyle(
            color: ThemeColors.secondaryColor,
          ),
        )
      ],
    );
  }
}
