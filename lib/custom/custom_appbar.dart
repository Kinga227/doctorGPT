import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;

  const CustomAppbar({Key? key, required this.title, this.actions})
      : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // the app bar's background color.
      backgroundColor: Colors.black,
      centerTitle: true,
      // app bar title
      title: Text(
        title,
        style: TextStyle(
          color: Colors.teal.shade100,
          fontSize: 18,
        ),
      ),
      iconTheme: IconThemeData(color: Colors.teal.shade100),
      actions: actions,
    );
  }
}
