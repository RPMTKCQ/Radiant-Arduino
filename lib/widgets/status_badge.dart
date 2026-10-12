import 'package:flutter/material.dart';

import '../models/streetlight.dart';

/// Small colored pill showing a streetlight's status (green/yellow/red).
class StatusBadge extends StatelessWidget {
  final StreetlightStatus status;

  const StatusBadge({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: status.color.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: status.color),
      ),
      child: Text(
        status.label,
        style: TextStyle(
          color: status.color,
          fontWeight: FontWeight.w600,
          fontSize: 12,
        ),
      ),
    );
  }
}
