// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_import

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeviceScreen extends StatefulWidget {
  const DeviceScreen({Key? key}) : super(key: key);

  @override
  State<DeviceScreen> createState() => _DeviceScreenState();
}

class _DeviceScreenState extends State<DeviceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF16171B),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Text('Devices', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 200, // Adjusted height to accommodate the text
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 30, 32, 37),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.white)),
                              child: Center(
                                  child: Text(
                                '1',
                                style: TextStyle(color: Colors.white),
                              )),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              'Physical Jump Tracker',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Icon(
                              CupertinoIcons.battery_100,

                              color:
                                  Colors.white, // You can customize the color
                            ),
                            Text(
                              '100%',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 10,
                      right: 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 200,
                            ), // Adjust the padding as needed
                            child: Icon(
                              CupertinoIcons.settings,
                              color: Colors.white,
                            ),
                          ),
                          Image.asset(
                            'assets/saved.png',
                            height: 25,
                          ),
                        ],
                      ),
                    ),
                    Image.asset('assets/rectangle.png'),
                    Image.asset('assets/mindmap.png'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 180,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 30, 32, 37),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.white)),
                              child: Center(
                                  child: Text(
                                '2',
                                style: TextStyle(color: Colors.white),
                              )),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              'Manual Jump Tracker',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      right: 1,
                      left: 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 220,
                            ), // Adjust the padding as needed
                            child: Icon(
                              CupertinoIcons.settings,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image.asset('assets/rectangle.png'),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Image.asset('assets/touch.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 60, left: 10),
                      child: Image.asset('assets/circle.png'),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 30, 32, 37),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        // onTap: () {
                        //   Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => SelectExercise()),
                        //   );
                        // },
                        child: Container(
                          height: 30,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 111, 111, 111),
                            shape: BoxShape.circle,
                          ),
                          child: Center(child: Icon(Icons.add)),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Add Device',
                        style: TextStyle(
                          color: Color.fromARGB(255, 111, 111, 111),
                        ),
                      ),
                      Text('1'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor:
            Color(0xFF16171B), // Set the background color here if needed
        items: [
          BottomNavigationBarItem(
            icon: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                height: 25,
                child: Icon(
                  Icons.bar_chart,
                  color: Colors.blue,
                )),
            label: 'progress',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.commute_rounded),
            label: 'newsfeed',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.commute_rounded),
            label: 'capture',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.commute_rounded),
            label: 'Milestone',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.commute_rounded),
            label: 'settings',
          ),
        ],
        // Add other properties as needed
        onTap: (int index) {
          // Handle tap event
        },
        currentIndex: 0, // Set the current selected index
      ),
    );
  }
}
