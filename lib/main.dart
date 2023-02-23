import 'package:flutter/material.dart';
import 'package:responsivedashboard/responsive/desktop_body.dart';
import 'package:responsivedashboard/responsive/tablet_body.dart';
import 'responsive/mobile_body.dart';
import 'responsive/responsive_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'responsive dashboard',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ResponsiveLayout(
          mobileBody: const MobileScaffold(),
          tabletBody: const TabletScaffold(),
          desktopBody: const DesktopScaffold(),
        ));
  }
}
