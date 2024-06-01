import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_manager/constants/colors_constants.dart';

AppBar defaultAppBarComponent(title) {
  return AppBar(
    backgroundColor: ColorConstants.light,
    automaticallyImplyLeading: false,
    toolbarHeight: 64,
    title: Builder(
      builder: (BuildContext context) {
        return IntrinsicWidth(
          child: Text(
            title,
            style: TextStyle(
              fontFamily: GoogleFonts.varelaRound().fontFamily,
              fontWeight: FontWeight.w600,
            ),
          ),
        );
      },
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.search_outlined),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.menu_open_outlined),
      )
    ],
  );
}
