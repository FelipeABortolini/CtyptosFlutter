import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double width;
  final String title;

  const CustomAppBar({
    super.key,
    required this.width,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: colorTextBlack,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
        splashRadius: 20,
      ),
      backgroundColor: white,
      elevation: 1,
      title: Text(
        title
        ,
        style: titleAppBarStyle(),
      ),
    );
  }

  @override
  Size get preferredSize => Size(width, 56);
}
