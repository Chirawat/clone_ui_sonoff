import 'package:flutter/material.dart';

class DeviceScreen extends StatelessWidget {
  static const routeName = '/device';

  const DeviceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff5641d5),
        title: Text('Kitchen Light'),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff5641d5),
              Color(0xff3d93ff),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0),
                ),
                border: Border.all(
                  color: Colors.white,
                  width: 5
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.power_settings_new,
                    size: 80,
                    color: Colors.white,
                  ),
                  Text(
                    'ON',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 58.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(
            //fontSize: 24.0,
            fontWeight: FontWeight.bold),
        backgroundColor: Color(0xff3d93ff),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.power_settings_new),
              label: 'Control',
              backgroundColor: Colors.greenAccent),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Schedule',
            //backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timer),
            label: 'Timer',
          ),
        ],
      ),
    );
  }
}
