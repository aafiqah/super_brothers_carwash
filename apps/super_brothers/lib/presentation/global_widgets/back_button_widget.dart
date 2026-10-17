import 'package:flutter/material.dart';

import '../../core/index.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({super.key, required this.onPressed, required this.icon});

  final VoidCallback onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      splashColor: Theme.of(context).colorScheme.surface,
      icon: ClipOval(
        child: ColoredBox(
          color: Theme.of(context).colorScheme.primary,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(
              icon,
              color: Theme.of(context).colorScheme.onPrimary,
              size: R.value(
                context: context,
                phone: 15,
                tabletPortrait: 20,
                tabletLandscape: 15,
                largeTabletPortrait: 25,
                largeTabletLandscape: 30,
              ),
            ),
          ),
        ),
      ),
      padding: EdgeInsets.zero,
      alignment: Alignment.center,
      iconSize: 31,
    );
  }
}