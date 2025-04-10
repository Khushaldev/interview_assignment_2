import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:interview_assignment_app/shared/widgets/app_chip.dart';

import '../../../generated/locale_keys.g.dart';
import '../../../shared/widgets/spacing.dart';

enum TimePeriod { today, thisWeek, thisMonth, thisYear }

class TimePeriodChips extends StatelessWidget {
  TimePeriodChips({super.key, this.onChanged});

  final Function(String)? onChanged;

  final selectedTimePeriod = ValueNotifier<TimePeriod>(TimePeriod.today);
  final selectedAmount = ValueNotifier<int>(20);

  @override
  Widget build(BuildContext context) {
    final Map<TimePeriod, String> timePeriodMap = {
      TimePeriod.today: LocaleKeys.time_period_today.tr(),
      TimePeriod.thisWeek: LocaleKeys.time_period_this_week.tr(),
      TimePeriod.thisMonth: LocaleKeys.time_period_this_month.tr(),
      TimePeriod.thisYear: LocaleKeys.time_period_this_year.tr(),
    };
    return ValueListenableBuilder<TimePeriod>(
        valueListenable: selectedTimePeriod,
        builder: (context, value, _) {
          return Padding(
            padding: horizontalPadding16,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              for (final mapEntry in timePeriodMap.entries)
                AppChip(
                  title: mapEntry.value,
                  selected: mapEntry.key == selectedTimePeriod.value,
                  onTap: () {
                    selectedTimePeriod.value = mapEntry.key;
                    selectedAmount.value = 0;

                    if (onChanged != null) {
                      // onChanged!(selectedTimePeriod.value);
                    }
                  },
                ),
            ]),
          );
        });
  }
}
