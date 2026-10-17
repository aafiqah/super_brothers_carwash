import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/index.dart';
import '../../core/index.dart';
import '../../gen/assets.gen.dart';
import '../index.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final bool useSliver;
  final Widget? leading;
  final bool? hasBackButton;
  final Widget? title;
  final VoidCallback? onPressedBack;
  final bool hasLanguage;
  final SwitchLanguageState? languageState;
  final double? expandedHeight;

  const AppBarWidget({
    super.key,
    this.useSliver = false,
    this.leading,
    this.hasBackButton,
    this.title,
    this.onPressedBack,
    required this.hasLanguage,
    this.languageState,
    this.expandedHeight,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final isEnglish = languageState?.locale.languageCode == 'en';

    final appBarContent = AppBar(
      leading: hasBackButton == true
          ? BackButtonWidget(onPressed: onPressedBack ?? () {}, icon: Icons.arrow_back_ios_rounded)
          : leading,
      title: title,
      actions: [
        if (hasLanguage)
          Container(
            margin: EdgeInsets.only(right: 15),
            child: ToggleButtons(
              isSelected: [isEnglish, !isEnglish],
              onPressed: (index) {
                final locale = index == 0 ? const Locale('en') : const Locale('ms');
                context.read<SwitchLanguageCubit>().switchLanguage(locale);
              },
              children: [
                Assets.images.enLanguange.image(
                  width: R.value(
                    context: context,
                    phone: 27,
                    tabletPortrait: 34,
                    tabletLandscape: 27,
                    largeTabletPortrait: 40,
                    largeTabletLandscape: 50,
                  
                  ),
                  height: R.value(
                    context: context,
                    phone: 13,
                    tabletPortrait: 20,
                    tabletLandscape: 13,
                    largeTabletPortrait: 22,
                    largeTabletLandscape: 22,
                  ),
                ),
                Assets.images.msLanguange.image(
                  width: R.value(
                    context: context,
                    phone: 27,
                    tabletPortrait: 34,
                    tabletLandscape: 27,
                    largeTabletPortrait: 40,
                    largeTabletLandscape: 50,
                  ),
                  height: R.value(
                    context: context,
                    phone: 13,
                    tabletPortrait: 20,
                    tabletLandscape: 13,
                    largeTabletPortrait: 22,
                    largeTabletLandscape: 22,
                  ),
                ),
              ],
            ),
          )
        else
          SizedBox(width: 50),
      ],
    );

    if (useSliver) {
      return SliverAppBar(
        pinned: false,
        floating: false,
        expandedHeight: expandedHeight ?? kToolbarHeight,
        leading: appBarContent.leading,
        title: appBarContent.title,
        actions: appBarContent.actions,
      );
    }

    return appBarContent;
  }
}