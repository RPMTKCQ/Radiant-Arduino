import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

enum StreetlightStatus { functional, warning, failed }

extension StreetlightStatusX on StreetlightStatus {
  String get label {
    switch (this) {
      case StreetlightStatus.functional:
        return 'Functional';
      case StreetlightStatus.warning:
        return 'Warning';
      case StreetlightStatus.failed:
        return 'Failed';
    }
  }

  Color get color {
    switch (this) {
      case StreetlightStatus.functional:
        return AppTheme.statusGreen;
      case StreetlightStatus.warning:
        return AppTheme.statusYellow;
      case StreetlightStatus.failed:
        return AppTheme.statusRed;
    }
  }
}

class Streetlight {
  final String id; // e.g. "UNIT #47"
  final String location;
  final StreetlightStatus status;
  final int brightnessPercent; // current LED output, 0-100
  final double energyTodayKwh;
  final bool motionDetected;
  final String lastMaintenance;
  final List<String> tags; // e.g. "Low Light", "Motion Detected"

  const Streetlight({
    required this.id,
    required this.location,
    required this.status,
    required this.brightnessPercent,
    required this.energyTodayKwh,
    required this.motionDetected,
    required this.lastMaintenance,
    required this.tags,
  });
}