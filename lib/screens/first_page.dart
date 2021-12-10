// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, use_key_in_widget_constructors

import 'package:deviceinfo/API/ip_info.dart';
import 'package:deviceinfo/screens/fifth_page.dart';
import 'package:deviceinfo/screens/fourth_page.dart';
import 'package:deviceinfo/info_widget.dart';
import 'package:deviceinfo/screens/second_page.dart';
import 'package:deviceinfo/screens/sixth_page.dart';
import 'package:deviceinfo/screens/third_page.dart';
import 'package:deviceinfo/screens/wifi_details.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  Map <String, dynamic> map = {};

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    init();
  }

  Future init() async {
    final ipAddress = await IpInfoApi.getIPAddress();
    // final phoneInfo = await DeviceInfoApi.getPhoneInfo();

    if (!mounted) return;
    setState(() => map = {
      'IP Address' : ipAddress,
      // 'Phone' : phoneInfo
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WiSec',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.redAccent,
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: <Color>[Colors.red, Colors.redAccent])),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Material(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'images/Digital-Cyber-Security-PNG-Picture.png',
                            width: 80,
                            height: 80,
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text(
                        'Wisec',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.catching_pokemon_rounded),
              title: const Text('Internet Cookies Guide'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.wifi_off_rounded),
              title: const Text('Fake Wi-Fi Guide'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ThirdPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.vpn_lock_rounded),
              title: const Text('Safe Web Usage Guide'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FourthPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.coronavirus_rounded),
              title: const Text('Malware Guide'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const FifthPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.wifi_lock_rounded),
              title: const Text('Web Security Guide'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SixthPage()));
              },
            ),
            Divider(),
            Divider(),
            ListTile(
              leading: Icon(Icons.exit_to_app_rounded),
              title: const Text('Exit'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => InfoWidget(map: map)));
                  },
                  child: Center(
                      child: Text(
                    'Check IP Details',
                    style: TextStyle(color: Colors.red),
                  ))),
              const Divider(),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WifiDetails()));
                  },
                  child: Center(
                      child: Text(
                        'View Wifi Details',
                        style: TextStyle(color: Colors.red),
                      ))),
              const Divider(),
              SizedBox(
                height: 20,
              ),
              const Text(
                'About Wisec:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              const Divider(),
              const Text(
                'Wisec (wireless security) is a security solution that provides guides and tips to users on how to stay safe when on public/free Wi-Fi networks and online in general. In recent times, internet users have trusted security solutions that claim to give them high-level security. Still, a user can not be highly secure if they depend on another team for its protection. With Wisec, user security is placed in the users hands, which will help increase user knowledge to understand better how hackers operate.',
                textAlign: TextAlign.justify,
              ),
              const Divider(),
              SizedBox(
                height: 20,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white60, onPrimary: Colors.black87),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SecondPage()));
                      },
                      icon: const Icon(
                        Icons.catching_pokemon_rounded,
                        color: Colors.black54,
                        size: 40.0,
                      ),
                      label: const Text(
                        'Cookies',
                      ),
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white60, onPrimary: Colors.black87),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ThirdPage()));
                      },
                      icon: const Icon(
                        Icons.wifi_off_rounded,
                        color: Colors.purple,
                        size: 40.0,
                      ),
                      label: const Text('Fake Wi-Fi'),
                    ),
                  ]),
              SizedBox(
                height: 20,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white60, onPrimary: Colors.black87),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FourthPage()));
                      },
                      icon: const Icon(
                        Icons.vpn_lock_rounded,
                        color: Colors.pink,
                        size: 40.0,
                      ),
                      label: const Text('Web'),
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white60, onPrimary: Colors.black87),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FifthPage()));
                      },
                      icon: const Icon(
                        Icons.coronavirus_rounded,
                        color: Colors.green,
                        size: 40.0,
                      ),
                      label: const Text('Malware'),
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white60, onPrimary: Colors.black87),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SixthPage()));
                      },
                      icon: const Icon(
                        Icons.wifi_lock_rounded,
                        color: Colors.blue,
                        size: 40.0,
                      ),
                      label: const Text('Wi-Fi'),
                    ),
                  ]),
            ]),
      ),
    );
  }
}
