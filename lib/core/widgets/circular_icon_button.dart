import 'package:flutter/material.dart';

class CircularIconButton extends StatelessWidget {
  const CircularIconButton({
    super.key,
    required this.onPressed,
    this.backgroundColor,
    this.iconColor,
    required this.iconData,
  });

  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? iconColor;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: CircleAvatar(
        radius: 30,
        backgroundColor:
            backgroundColor ?? Theme.of(context).colorScheme.secondaryContainer,
        child: Icon(
          iconData,
          color:
              iconColor ?? Theme.of(context).colorScheme.onSecondaryContainer,
          size: 30,
        ),
      ),
    );
  }
}
