// ignore_for_file: file_names, prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:connectivity/connectivity.dart';
import 'package:deviceinfo/API/device_info.dart';
import 'package:deviceinfo/info_widget.dart';
import 'package:deviceinfo/API/ip_info.dart';
import 'package:deviceinfo/utils_snackbar.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
        title: Text('Security App'),
        leading: IconButton(
          icon: Icon(Icons.dehaze_rounded),
          onPressed: (){},
        ),
      ),

      body: InfoWidget(map: map,)

    );
  }

}

