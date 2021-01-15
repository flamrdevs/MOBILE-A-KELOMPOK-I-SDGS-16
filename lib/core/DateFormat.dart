class DateFormat {
  static String getDefDate(DateTime date) {
    final day = date.day;
    final month = date.month;
    final year = date.year;

    return '$day-$month-$year';
  }

  static String getDefTime(DateTime date) {
    final hour = date.hour;
    final minute = date.minute;
    final second = date.second;

    return '$hour:$minute:$second';
  }
}
