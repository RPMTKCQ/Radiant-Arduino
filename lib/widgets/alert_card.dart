import 'package:flutter/material.dart';

import '../models/alert.dart';
import '../theme/app_theme.dart';

class AlertCard extends StatelessWidget {
  final RadiantAlert alert;

  const AlertCard({super.key, required this.alert});

  Color get _severityColor {
    switch (alert.severity) {
      case AlertSeverity.critical:
        return AppTheme.statusRed;
      case AlertSeverity.warning:
        return AppTheme.statusYellow;
      case AlertSeverity.info:
        return AppTheme.primaryMediumCyan;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppTheme.cardBorder),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 4,
            height: 40,
            decoration: BoxDecoration(
              color: _severityColor,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  alert.title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 2),
                Text(
                  alert.message,
                  style: const TextStyle(color: Colors.black87),
                ),
              ],
            ),
          ),
          Text(
            alert.timeAgo,
            style: const TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
