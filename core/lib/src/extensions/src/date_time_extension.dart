import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String toFormatDateTime([String? pattern, String? locale]) =>
      DateFormat(pattern ?? 'dd MMM yyyy', locale ?? 'id').format(this);
  String toFormatDateTimeBody([String? pattern, String? locale]) =>
      DateFormat(pattern ?? 'yyyy-MM-dd', locale ?? 'id').format(this);
  String toFormatDateTimeResponse([String? pattern, String? locale]) =>
      DateFormat(pattern ?? 'dd MMM yyyy', locale ?? 'id').format(this);
}
