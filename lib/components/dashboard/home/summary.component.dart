import 'package:flutter/material.dart';
import 'package:task_manager/components/global/summary-card.component.dart';
import 'package:task_manager/constants/colors.constants.dart';
import 'package:task_manager/constants/spacing.constants.dart';

class SummaryComponent extends StatelessWidget {
  const SummaryComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(36),
        bottomRight: Radius.circular(36),
      ),
      child: Container(
        padding: const EdgeInsets.all(SpacingConstants.normalSpacing),
        width: double.infinity,
        color: ColorConstants.light,
        child: const Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: SummaryCardComponent(
                    title: 'Ongoing',
                    icon: Icons.repeat_outlined,
                  ),
                ),
                SizedBox(width: SpacingConstants.normalSpacing),
                Expanded(
                  child: SummaryCardComponent(
                    title: 'In Proccess',
                    severity: 'warning',
                    icon: Icons.schedule_outlined,
                  ),
                ),
              ],
            ),
            SizedBox(height: SpacingConstants.normalSpacing),
            Row(
              children: [
                Expanded(
                  child: SummaryCardComponent(
                    title: 'Completed',
                    severity: 'success',
                    icon: Icons.task_outlined,
                  ),
                ),
                SizedBox(width: SpacingConstants.normalSpacing),
                Expanded(
                  child: SummaryCardComponent(
                    title: 'Canceled',
                    severity: 'danger',
                    icon: Icons.cancel_presentation_outlined,
                  ),
                ),
              ],
            ),
            SizedBox(height: SpacingConstants.normalSpacing),
          ],
        ),
      ),
    );
  }
}
