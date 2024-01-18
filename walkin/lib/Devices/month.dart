// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MonthScreen extends StatefulWidget {
  const MonthScreen({super.key});

  @override
  State<MonthScreen> createState() => _MonthScreenState();
}

class _MonthScreenState extends State<MonthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF16171B),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text(
                            'Hi Sarah',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.white),
                          ),
                          Text(
                            'Good Morning!  ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 8,
                                color:
                                    const Color.fromARGB(255, 107, 106, 106)),
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/mindmapnote.png',
                        height: 50,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        'assets/plusclock.png',
                        height: 50,
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 22,
                    width: 35,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Text(
                        'Day',
                        style: TextStyle(color: Colors.white, fontSize: 11),
                      ),
                    ),
                  ),
                  Container(
                    height: 22,
                    width: 35,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Text(
                        'Week',
                        style: TextStyle(
                            color: Color.fromARGB(255, 167, 155, 155),
                            fontSize: 11),
                      ),
                    ),
                  ),
                  Container(
                    height: 22,
                    width: 38,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 54, 53, 53),
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Text(
                        'Month',
                        style: TextStyle(color: Colors.white, fontSize: 11),
                      ),
                    ),
                  ),
                  Container(
                    height: 22,
                    width: 35,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Text(
                        'Year',
                        style: TextStyle(
                            color: Color.fromARGB(255, 167, 155, 155),
                            fontSize: 11),
                      ),
                    ),
                  ),
                  Container(
                    height: 22,
                    width: 50,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Text(
                        'All Time',
                        style: TextStyle(
                            color: Color.fromARGB(255, 167, 155, 155),
                            fontSize: 11),
                      ),
                    ),
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color.fromARGB(255, 53, 53, 53)),
                    child: Center(
                        child: Center(
                            child: Icon(
                      CupertinoIcons.chevron_down,

                      //up icon
                      //CupertinoIcons.chevron_up,
                      size: 15,
                      color: Colors.white,
                    ))),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(193, 97, 102, 138),
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
                                  '11',
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                'Milestone',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13),
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
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Image.asset('assets/Time.png'),
                              ),
                              Text(
                                '5h',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13),
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
                                  right: 20,
                                ), // Adjust the padding as needed
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/group.png',
                                      height: 20,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '2.4',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 28,
                                      ),
                                    ),
                                  ],
                                )),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Image.asset(
                                'assets/info.png',
                                height: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset('assets/circle2.png'),
                      Padding(
                        padding: const EdgeInsets.only(top: 8, left: 4),
                        child: Image.asset('assets/simplecircle.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 150),
                        child: Image.asset('assets/dots.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10, right: 5),
                        child: Text(
                          '4',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 62,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 30, 32, 37),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Image.asset(
                                  'assets/Time.png',
                                  height: 25,
                                  color:
                                      const Color.fromARGB(255, 151, 150, 150),
                                ),
                              ),
                              Text(
                                'Hours',
                                style: TextStyle(
                                    color: const Color.fromARGB(
                                        255, 151, 150, 150),
                                    fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Row(
                            children: [
                              Text(
                                '0:50',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                ),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  Image.asset(
                                    'assets/tiltcircle.png',
                                    height: 60,
                                  ),
                                  Text(
                                    'W',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40, bottom: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '/1:00',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Image.asset(
                                  'assets/info.png',
                                  color:
                                      const Color.fromARGB(255, 146, 146, 146),
                                ),
                              )
                            ],
                          ),
                        ),
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 30, 32, 37),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Image.asset(
                                  'assets/group.png',
                                  height: 15,
                                  color:
                                      const Color.fromARGB(255, 151, 150, 150),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Consistency',
                                style: TextStyle(
                                    color: const Color.fromARGB(
                                        255, 151, 150, 150),
                                    fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Row(
                            children: [
                              Text(
                                '2',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 18),
                                    child: Text(
                                      '/3',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 70,
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                    'assets/calender.png',
                                    height: 70,
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 4,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40, bottom: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Image.asset(
                                  'assets/info.png',
                                  color:
                                      const Color.fromARGB(255, 146, 146, 146),
                                ),
                              )
                            ],
                          ),
                        ),
                      ]),
                ),
              )
            ],
          ),
        )),
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
            label: 'capture',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.commute_rounded),
            label: 'Milestone',
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
