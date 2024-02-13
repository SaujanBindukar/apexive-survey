import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.text, this.actions});

  final String text;
  final Widget? actions;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.chevron_left,
            size: 30,
          ),
        ),
        Text(
          text,
          style: textTheme.headlineSmall,
        ),
        const SizedBox(),
      ],
    );
  }
}
