import 'package:flutter/material.dart';

class AppBarcomponets extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color backGroundColor;
  final Color fontColor;
  final bool isCenter;

  const AppBarcomponets({
    super.key,
    required this.title,
    required this.backGroundColor,
    required this.fontColor,
    required this.isCenter,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(fontSize: 16, fontWeight: .bold, color: fontColor),
      ),
      backgroundColor: backGroundColor,
      centerTitle: isCenter,
    );
  }
}
