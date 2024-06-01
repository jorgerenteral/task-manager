import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_manager/constants/colors_constants.dart';

// Definir un nuevo tipo de TextTheme personalizado
class ButtonStyles {
  static ButtonStyle primaryButton(BuildContext context) {
    return ElevatedButton.styleFrom(
      textStyle: GoogleFonts.varela(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      backgroundColor: ColorConstants.primary,
      padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 24),
      fixedSize: const Size(100, 70),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
