

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../Utils/01. googlemap_marker.dart';

class GooglemapMarkerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return ChangeNotifierProvider(
          create: (context) => GoogleMapsMarkerNotifier(),
          child: const MaterialApp(
            title: 'Google Maps Markers App',
            home: GoogleMapsMarkerExample(),
          ),
        );
      },
    );
  }
}
