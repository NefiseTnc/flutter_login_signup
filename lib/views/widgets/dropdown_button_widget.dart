import 'package:flutter/material.dart';

class DropDownButtonWidget extends StatefulWidget {
  final String text;
  final List<String> list;
  const DropDownButtonWidget({
    Key? key,
    required this.text,
    required this.list,
  }) : super(key: key);

  @override
  State<DropDownButtonWidget> createState() => _DropDownButtonWidgetState();
}

class _DropDownButtonWidgetState extends State<DropDownButtonWidget> {
  String _selected = 'Türkçe';
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.text,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        DropdownButton(
            value: _selected,
            items: widget.list.map((value) {
              return DropdownMenuItem(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (value) {
              if (value != null) {
                setState(() {
                  _selected = value.toString();
                });
              }
            })
      ],
    );
  }
}
