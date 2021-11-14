import 'package:clone_sonoff/screens/device_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './screens/devices_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DevicesScreen(),
      routes: {
        DeviceScreen.routeName: (ctx) => DeviceScreen(),
      },
    );
  }
}
