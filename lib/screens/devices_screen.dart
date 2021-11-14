import 'package:flutter/material.dart';
import 'package:signal_strength_indicator/signal_strength_indicator.dart';
import './device_screen.dart';

class DevicesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
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
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
          child: Column(
            children: [
              Device(title: 'Front Light', status: 'ON', value: 1.0),
              Device(title: 'Kitchen Light', status: 'OFF', value: 0.4),
              Device(title: 'Living Room 1', status: 'OFF', value: 0.8),
              Device(title: 'Living Room 2', status: 'ON', value: 0.6),
            ],
          ),
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
              icon: Icon(Icons.view_list),
              label: 'All Devices',
              backgroundColor: Colors.greenAccent),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add Device',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Account',
            //backgroundColor: Colors.purple,
          ),
        ],
      ),
    );
  }
}

class Device extends StatelessWidget {
  final String title;
  final String status;
  final double value;

  const Device(
      {Key? key,
      required this.title,
      required this.status,
      required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: (){
        Navigator.of(context).pushNamed(DeviceScreen.routeName);
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 10.0),
        width: double.infinity,
        //height: MediaQuery.of(context).padding.bottom,
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Color(0xffe5e8fb),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              //padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Container(
                  width: 50,
                  height: 50,
                  //color: Colors.blue,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: status == 'ON' ? Colors.blue : Colors.grey,
                  ),
                  child: Icon(Icons.power_settings_new),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
                ),
              ]),
            ),
            SignalStrengthIndicator.sector(
              value: value,
              size: 40,
              barCount: 4,
              spacing: 0.2,
              activeColor: Colors.blue,
              inactiveColor: Colors.white30,
            )
          ],
        ),
      ),
    );
  }
}
