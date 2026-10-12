import '../models/streetlight.dart';
import '../models/alert.dart';

class MockData {
  MockData._();

  static const List<Streetlight> streetlights = [
    Streetlight(
      id: 'UNIT #12',
      location: 'Rizal Ave. cor. 5th St.',
      status: StreetlightStatus.functional,
      brightnessPercent: 40,
      energyTodayKwh: 1.8,
      motionDetected: false,
      lastMaintenance: 'Aug 3, 2026',
      tags: ['Low Activity', 'Ambient Light OK'],
    ),
    Streetlight(
      id: 'UNIT #23',
      location: 'Commonwealth Ave.',
      status: StreetlightStatus.warning,
      brightnessPercent: 85,
      energyTodayKwh: 3.2,
      motionDetected: true,
      lastMaintenance: 'Jul 21, 2026',
      tags: ['Motion Detected', 'Battery Low'],
    ),
    Streetlight(
      id: 'UNIT #15',
      location: 'Katipunan Ave.',
      status: StreetlightStatus.failed,
      brightnessPercent: 0,
      energyTodayKwh: 0.0,
      motionDetected: false,
      lastMaintenance: 'Jun 30, 2026',
      tags: ['Bulb Out', 'Needs Repair'],
    ),
    Streetlight(
      id: 'UNIT #47',
      location: 'España Blvd.',
      status: StreetlightStatus.warning,
      brightnessPercent: 100,
      energyTodayKwh: 4.1,
      motionDetected: true,
      lastMaintenance: 'Aug 10, 2026',
      tags: ['Offline Intermittently'],
    ),
  ];

  static const List<RadiantAlert> alerts = [
    RadiantAlert(
      unitId: 'UNIT #47',
      title: 'Malfunction Alert',
      message: 'UNIT #47 offline',
      severity: AlertSeverity.critical,
      timeAgo: '15 minutes ago',
    ),
    RadiantAlert(
      unitId: 'UNIT #23',
      title: 'Low Battery',
      message: 'UNIT #23 at 18%',
      severity: AlertSeverity.warning,
      timeAgo: '2 hours ago',
    ),
    RadiantAlert(
      unitId: 'UNIT #15',
      title: 'Critical: Bulb Out',
      message: 'UNIT #15 dark',
      severity: AlertSeverity.critical,
      timeAgo: '4 hours ago',
    ),
  ];
}