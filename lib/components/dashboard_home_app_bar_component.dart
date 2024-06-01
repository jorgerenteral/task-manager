import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:task_manager/constants/colors_constants.dart';

AppBar dashboardHomeAppBarComponent() {
  DateTime today = DateTime.now();
  String formattedToday = DateFormat('MMM d, yyyy').format(today);

  return AppBar(
    backgroundColor: ColorConstants.light,
    automaticallyImplyLeading: false,
    toolbarHeight: 64,
    title: Builder(
      builder: (BuildContext context) {
        return IntrinsicWidth(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    formattedToday,
                    style: TextStyle(
                      fontFamily: GoogleFonts.varelaRound().fontFamily,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: ColorConstants.grey,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Icon(
                      Icons.calendar_month_outlined,
                      size: 20,
                      color: ColorConstants.grey,
                    ),
                  ),
                ],
              ),
            ],
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
