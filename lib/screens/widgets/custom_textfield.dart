import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class CustomTextfield extends StatefulWidget {
  final String label;
  final TextInputType? inputType;
  final bool isPass;
  const CustomTextfield({
    Key? key,
    required this.label,
    this.inputType = TextInputType.text,
    this.isPass = false,
  }) : super(key: key);

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
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
