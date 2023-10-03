import 'package:intl/intl.dart';

dateConverter(String date) {
  final parsDate = DateTime.parse(date);
  final DateFormat formatter = DateFormat('MM / dd / yyyy');
  final String formatted = formatter.format(parsDate);
  return formatted;
}