import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_manager/constants/colors.constants.dart';

class TitleComponent extends StatelessWidget {
  const TitleComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      width: double.infinity,
      color: ColorConstants.light,
      child: Text(
        'Today',
        style: GoogleFonts.varela(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: ColorConstants.dark,
        ),
      ),
    );
  }
}
