import 'package:flutter/material.dart';
import 'package:flutter_assessment/theme/app_theme.dart';

class DaySelector extends StatefulWidget {
  final Function(DateTime) onDateChange;
  const DaySelector({super.key, required this.onDateChange});

  @override
  _DaySelectorState createState() => _DaySelectorState();
}

class _DaySelectorState extends State<DaySelector> {
  DateTime selectedDate = DateTime.now();

  void _changeDate(int days) {
    setState(() {
      selectedDate = selectedDate.add(Duration(days: days));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_getWeekdayShort(selectedDate.subtract(const Duration(days: 2))),
                style: TextStyle(color: appColor(context).secondaryText!.withValues(alpha: 0.3))),
            const SizedBox(width: 8),
            Text(_getWeekdayShort(selectedDate.subtract(const Duration(days: 1))),
                style: TextStyle(color: appColor(context).secondaryText!.withValues(alpha: 0.3))),
            const SizedBox(width: 8),
            GestureDetector(
              onTap: () => _changeDate(-1),
              child: Icon(Icons.chevron_left, color: appColor(context).primaryText),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: appColor(context).text,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                _getFormattedDate(selectedDate),
                style: TextStyle(color: appColor(context).background),
              ),
            ),
            GestureDetector(
              onTap: () { _changeDate(1);widget.onDateChange(selectedDate);},
              child: Icon(Icons.chevron_right, color: appColor(context).primaryText),
            ),
            const SizedBox(width: 8),
            Text(_getWeekdayShort(selectedDate.add(const Duration(days: 1))),
                style: TextStyle(color: appColor(context).secondaryText!.withValues(alpha: 0.3))),
            const SizedBox(width: 8),
            Text(_getWeekdayShort(selectedDate.add(const Duration(days: 2))),
                style: TextStyle(color: appColor(context).secondaryText!.withValues(alpha: 0.3))),
            const SizedBox(width: 8),
          ],
        ),
      ),
    );
  }

  String _getFormattedDate(DateTime date) {
    return "${_getWeekday(date)}, ${_getMonth(date)} ${date.day}";
  }

  String _getWeekday(DateTime date) {
    List<String> weekdays = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
    return weekdays[date.weekday % 7];
  }

  String _getWeekdayShort(DateTime date) {
    List<String> weekdays = ["Sun", "Mon", "Tue", "Wed", "Thr", "Fri", "Sat"];
    return weekdays[date.weekday % 7];
  }

  String _getMonth(DateTime date) {
    List<String> months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
    return months[date.month - 1];
  }
}
