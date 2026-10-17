
import 'package:flutter/material.dart';

class FilledButtonWidget extends StatelessWidget {
  const FilledButtonWidget({
    super.key,
    required this.onPressed,
    required this.text,
  });

  final VoidCallback onPressed;
  final Widget text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FilledButton(
        onPressed: onPressed,
        child: text,
      ),
    );
  }
}

class OutlineButtonWidget extends StatelessWidget {
  const OutlineButtonWidget({
    super.key,
    required this.onPressed,
    required this.text,
  });

  final VoidCallback onPressed;
  final Widget text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: OutlinedButton(
        onPressed: onPressed,
        child: text,
      ),
    );
  }
}
