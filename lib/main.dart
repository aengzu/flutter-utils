import 'package:flutter/material.dart';
import 'package:flutter_utils/Screens/01. googlemap_marker_screen.dart';
import 'package:provider/provider.dart';
import 'Utils/01. googlemap_marker.dart';
import 'package:sizer/sizer.dart';

import 'Utils/02. bottom_navbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'CustomBottmBar',
      home: CustomBottomNavbar(),
    );
  }
}
