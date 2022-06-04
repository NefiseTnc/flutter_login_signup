import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class TextfieldWidget extends StatefulWidget {
  final String label;
  final TextInputType? inputType;
  final bool isPass;
  const TextfieldWidget({
    Key? key,
    required this.label,
    this.inputType = TextInputType.text,
    this.isPass = false,
  }) : super(key: key);

  @override
  State<TextfieldWidget> createState() => _TextfieldWidgetState();
}

class _TextfieldWidgetState extends State<TextfieldWidget> {
  bool _isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.isPass ? _isObscureText : false,
      decoration: InputDecoration(
        label: Text(widget.label),
        labelStyle: const TextStyle(color: ThemeColors.textFieldColor),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: ThemeColors.primaryColor,
          ),
        ),
        suffixIcon: widget.isPass
            ? IconButton(
                onPressed: () {
                  setState(() {
                    _isObscureText = !_isObscureText;
                  });
                },
                icon: _isObscureText
                    ? const Icon(
                        Icons.visibility_off,
                        color: ThemeColors.primaryColor,
                      )
                    : const Icon(
                        Icons.visibility,
                        color: ThemeColors.primaryColor,
                      ))
            : null,
      ),
    );
  }
}
