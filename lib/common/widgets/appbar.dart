import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../utils/constants/colors.dart';

class FAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FAppBar({
    super.key,
    required this.title,
    this.firstIcon = Iconsax.notification_bing_outline,
    this.secondIcon = Icons.shopping_cart,
    this.backButton = false,
  });

  final String title;
  final IconData firstIcon;
  final IconData secondIcon;
  final bool backButton;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: backButton ? const Icon(Iconsax.arrow_left_2_outline) : null,
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: "DMSans",
          fontWeight: FontWeight.bold,
          color: FColors.oceanBlue,
        ),
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 5, 10),
          child: Icon(firstIcon, color: FColors.dark),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 10, 10, 10),
          child: Icon(secondIcon, color: FColors.dark),
        ),
      ],
    );
  }
}
