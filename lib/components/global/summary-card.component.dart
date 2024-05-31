import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_manager/constants/colors.constants.dart';
import 'package:task_manager/constants/spacing.constants.dart';

class SummaryCardComponent extends StatelessWidget {
  final String title;
  final String? severity;
  final IconData icon;

  const SummaryCardComponent({
    super.key,
    required this.title,
    this.severity,
    required this.icon,
  });

  Color getSeverityColor(severity) {
    switch (severity) {
      case 'success':
        return ColorConstants.success;

      case 'warning':
        return ColorConstants.warning;

      case 'danger':
        return ColorConstants.danger;

      default:
        return ColorConstants.primary;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: Container(
        padding: const EdgeInsets.all(SpacingConstants.normalSpacing),
        color: getSeverityColor(severity),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  icon,
                  color: ColorConstants.light,
                ),
              ],
            ),
            const SizedBox(height: SpacingConstants.normalSpacing),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                    child: Text(
                  title,
                  style: GoogleFonts.varelaRound(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: ColorConstants.light,
                  ),
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
