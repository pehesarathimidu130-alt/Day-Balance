import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_text_styles.dart';

/// Shows a custom three-wheel time picker bottom sheet (Hour 1-12, Minute 5m steps, AM/PM)
/// in Day-Balance theme colors, with >=48dp touch targets and mouse/touch scroll support.
Future<TimeOfDay?> showAppTimePicker({
  required BuildContext context,
  required String title,
  required TimeOfDay initialTime,
}) {
  return showModalBottomSheet<TimeOfDay>(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (context) => _AppTimePickerSheet(
      title: title,
      initialTime: initialTime,
    ),
  );
}

class _AppTimePickerSheet extends StatefulWidget {
  final String title;
  final TimeOfDay initialTime;

  const _AppTimePickerSheet({
    required this.title,
    required this.initialTime,
  });

  @override
  State<_AppTimePickerSheet> createState() => _AppTimePickerSheetState();
}

class _AppTimePickerSheetState extends State<_AppTimePickerSheet> {
  static const List<int> _hours = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
  static const List<int> _minutes = [0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55];
  static const List<String> _periods = ['AM', 'PM'];

  late int _selectedHour;
  late int _selectedMinute;
  late String _selectedPeriod;

  late FixedExtentScrollController _hourController;
  late FixedExtentScrollController _minuteController;
  late FixedExtentScrollController _periodController;

  static const double _itemExtent = 44.0;

  @override
  void initState() {
    super.initState();
    final hourOfPeriod = widget.initialTime.hourOfPeriod == 0 ? 12 : widget.initialTime.hourOfPeriod;
    final nearestMinuteIndex = ((widget.initialTime.minute / 5).round()) % 12;

    _selectedHour = hourOfPeriod;
    _selectedMinute = _minutes[nearestMinuteIndex];
    _selectedPeriod = widget.initialTime.period == DayPeriod.am ? 'AM' : 'PM';

    _hourController = FixedExtentScrollController(initialItem: _selectedHour - 1);
    _minuteController = FixedExtentScrollController(initialItem: nearestMinuteIndex);
    _periodController = FixedExtentScrollController(initialItem: _selectedPeriod == 'AM' ? 0 : 1);
  }

  @override
  void dispose() {
    _hourController.dispose();
    _minuteController.dispose();
    _periodController.dispose();
    super.dispose();
  }

  TimeOfDay _computeTimeOfDay() {
    int hour24 = _selectedHour;
    if (_selectedPeriod == 'AM') {
      if (hour24 == 12) hour24 = 0;
    } else {
      if (hour24 != 12) hour24 += 12;
    }
    return TimeOfDay(hour: hour24, minute: _selectedMinute);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.canvas,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Drag handle
            Container(
              margin: const EdgeInsets.only(top: 12, bottom: 8),
              width: 36,
              height: 4,
              decoration: BoxDecoration(
                color: AppColors.outline.withAlpha(120),
                borderRadius: BorderRadius.circular(100),
              ),
            ),

            // Top action bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Cancel button
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    style: TextButton.styleFrom(
                      minimumSize: const Size(48, 48),
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                    ),
                    child: Text(
                      'Cancel',
                      style: AppTextStyles.bodyMedium.copyWith(
                        color: AppColors.secondary,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  // Title
                  Text(
                    widget.title,
                    style: AppTextStyles.headlineSmall.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.text,
                    ),
                  ),

                  // Done button
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(_computeTimeOfDay()),
                    style: TextButton.styleFrom(
                      minimumSize: const Size(48, 48),
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                    ),
                    child: Text(
                      'Done',
                      style: AppTextStyles.bodyMedium.copyWith(
                        color: AppColors.primarySage,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const Divider(color: AppColors.divider, height: 1),

            // Wheel Pickers container
            SizedBox(
              height: 220,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Highlight selection bar for the middle active item
                  Container(
                    height: _itemExtent,
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    decoration: BoxDecoration(
                      color: AppColors.sageContainer.withAlpha(160),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),

                  // Three wheels: Hours, Minutes, AM/PM
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Hours wheel (1 - 12)
                      _buildWheel(
                        controller: _hourController,
                        itemCount: _hours.length,
                        onChanged: (index) {
                          setState(() => _selectedHour = _hours[index]);
                        },
                        builder: (index) {
                          final h = _hours[index];
                          final isSelected = h == _selectedHour;
                          return _buildWheelText(
                            h.toString(),
                            isSelected: isSelected,
                          );
                        },
                      ),

                      // Colon separator
                      Text(
                        ':',
                        style: AppTextStyles.headlineSmall.copyWith(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: AppColors.text,
                        ),
                      ),

                      // Minutes wheel (00, 05, ... 55)
                      _buildWheel(
                        controller: _minuteController,
                        itemCount: _minutes.length,
                        onChanged: (index) {
                          setState(() => _selectedMinute = _minutes[index]);
                        },
                        builder: (index) {
                          final m = _minutes[index];
                          final isSelected = m == _selectedMinute;
                          return _buildWheelText(
                            m.toString().padLeft(2, '0'),
                            isSelected: isSelected,
                          );
                        },
                      ),

                      const SizedBox(width: 16),

                      // Period wheel (AM / PM)
                      _buildWheel(
                        controller: _periodController,
                        itemCount: _periods.length,
                        width: 70,
                        onChanged: (index) {
                          setState(() => _selectedPeriod = _periods[index]);
                        },
                        builder: (index) {
                          final p = _periods[index];
                          final isSelected = p == _selectedPeriod;
                          return _buildWheelText(
                            p,
                            isSelected: isSelected,
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget _buildWheel({
    required FixedExtentScrollController controller,
    required int itemCount,
    required ValueChanged<int> onChanged,
    required Widget Function(int index) builder,
    double width = 80,
  }) {
    return SizedBox(
      width: width,
      child: ListWheelScrollView.useDelegate(
        controller: controller,
        itemExtent: _itemExtent,
        physics: const FixedExtentScrollPhysics(),
        perspective: 0.003,
        diameterRatio: 1.4,
        onSelectedItemChanged: onChanged,
        childDelegate: ListWheelChildBuilderDelegate(
          builder: (context, index) {
            if (index < 0 || index >= itemCount) return null;
            return builder(index);
          },
          childCount: itemCount,
        ),
      ),
    );
  }

  Widget _buildWheelText(String text, {required bool isSelected}) {
    return Center(
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'Roboto',
          fontSize: isSelected ? 22 : 18,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.w400,
          color: isSelected ? AppColors.text : AppColors.secondary.withAlpha(160),
        ),
      ),
    );
  }
}
