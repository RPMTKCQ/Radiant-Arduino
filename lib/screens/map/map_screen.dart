import 'package:flutter/material.dart';

import '../../data/mock_data.dart';
import '../../widgets/streetlight_card.dart';
import 'streetlight_detail_screen.dart';

/// Prototype "Map" tab. For now this is a status-colored list overview
/// of all connected streetlights, not a literal geographic map —
/// no map API/coordinates needed for the prototype. Tapping a unit
/// opens its detail screen.
class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final lights = MockData.streetlights;

    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 8),
            child: Text(
              'Streetlight Overview',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 20),
              itemCount: lights.length,
              itemBuilder: (context, index) {
                final light = lights[index];
                return StreetlightCard(
                  light: light,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => StreetlightDetailScreen(light: light),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
