import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final VoidCallback? onPressed;
  final bool outlined;

  const CustomButton({
    required this.text,
    this.onPressed,
    this.icon,
    this.outlined = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final style = outlined
        ? OutlinedButton.styleFrom(
            minimumSize: Size(double.infinity, 50),
            foregroundColor: Theme.of(context).colorScheme.primary,
            textStyle: TextStyle(fontSize: 18),
            side: BorderSide(color: Theme.of(context).colorScheme.primary, width: 2),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          )
        : ElevatedButton.styleFrom(
            minimumSize: Size(double.infinity, 50),
            backgroundColor: Theme.of(context).colorScheme.primary,
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 18),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          );
    return outlined
        ? OutlinedButton.icon(
            icon: Icon(icon),
            label: Text(text),
            onPressed: onPressed,
            style: style,
          )
        : ElevatedButton.icon(
            icon: Icon(icon),
            label: Text(text),
            onPressed: onPressed,
            style: style,
          );
  }
} 