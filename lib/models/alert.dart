enum AlertSeverity { info, warning, critical }

class RadiantAlert {
  final String unitId;
  final String title;
  final String message;
  final AlertSeverity severity;
  final String timeAgo; // e.g. "15 minutes ago"

  const RadiantAlert({
    required this.unitId,
    required this.title,
    required this.message,
    required this.severity,
    required this.timeAgo,
  });
}
