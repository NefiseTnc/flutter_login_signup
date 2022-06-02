import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class SocialMediaButton extends StatelessWidget {
  final String imageUrl;
  final String text;
  final Color color;
  final VoidCallback onTap;
  const SocialMediaButton({
    Key? key,
    required this.imageUrl,
    required this.text,
    required this.color,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          alignment: Alignment.center,
          width: double.infinity,
          height: MediaQuery.of(context).size.height * .06,
          decoration: BoxDecoration(
              border: Border.all(color: color),
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          child: Row(children: [
            Image.asset(imageUrl),
            const SizedBox(width: 10),
            Text(
              text,
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: ThemeColors.primaryColor,
                  ),
            ),
          ])),
    );
  }
}
