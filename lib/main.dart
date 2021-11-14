import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextStyle titleStyle = TextStyle(
    color: Color(0xFF5B777B),
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
  );

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
            ])),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
          child: Column(
            children: [
              Device(title: 'Front Light', status: 'ON'),
              Device(title: 'Kitchen Light', status: 'OFF'),
              Device(title: 'Living Room 1', status: 'OFF'),
              Device(title: 'Living Room 2', status: 'ON'),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(
          //fontSize: 24.0,
          fontWeight: FontWeight.bold
        ),
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
  const Device({
    Key? key,
    required this.title,
    required this.status
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  color: status=='ON' ? Colors.blue: Colors.grey,
                ),
                child: Icon(Icons.power_settings_new),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 22.0),
              ),
            ]),
          ),
          Icon(Icons.wifi, color: Colors.blue,)
        ],
      ),
    );
  }
}
