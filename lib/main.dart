import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Utils/googlemap_marker.dart';
import 'package:sizer/sizer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
