// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:connectivity/connectivity.dart';
import 'package:deviceinfo/utils_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';

class InfoWidget extends StatelessWidget {
  final Map<String, dynamic> map;

  const InfoWidget({
    Key? key,
    required this.map,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => map.isEmpty
      ? Center(child: CircularProgressIndicator())
      : Scaffold(
          body: ListView(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.all(16),
            children: map.keys.map((key) {
              final value = map[key];

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back)),
                      Text('Back')
                    ],
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          key,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            '$value',
                            maxLines: 10,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 80),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.redAccent),
                        onPressed: () async {
                          final result =
                              await Connectivity().checkConnectivity();
                          showConnectivitySnackBar(result);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [Text('Check Network'), Icon(Icons.wifi)],
                        )),
                  ),
                ],
              );
            }).toList(),
          ),
        );

  showConnectivitySnackBar(ConnectivityResult result) {
    final hasInternet = result != ConnectivityResult.none;
    final message = hasInternet
        ? 'You have again ${result.toString()}'
        : 'You have no internet';
    final color = hasInternet ? Colors.green : Colors.red;

    Utils.showTopSnackBar(message, color);
  }
}
