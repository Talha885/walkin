// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AutoTracker extends StatefulWidget {
  const AutoTracker({super.key});

  @override
  State<AutoTracker> createState() => _AutoTrackerState();
}

class _AutoTrackerState extends State<AutoTracker> {
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
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(children: [
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                'Jump Tracker',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 30,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  'Autotracker 1',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Text(
                'Device Settings',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Tracker Name',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                ),
              ),
              Text(
                'Jump Tracker',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                ),
              )
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Tracking',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                ),
              ),
              Text(
                'Jumping',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                ),
              )
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'Mode',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Center(
                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Center(
                        child: Icon(
                          Icons.info,
                          size: 10,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Text(
                'Mode A',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                ),
              )
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Preferred Time Limits',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                ),
              ),
              Text(
                'Minutes',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                ),
              )
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            children: [
              Text(
                'Goal Settings',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Session Length',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                ),
              ),
              Text(
                '30 min',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                ),
              )
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Weekly Sessions',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                ),
              ),
              Text(
                '4',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                ),
              )
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Megastone Goal',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                ),
              ),
              Text(
                '50 hours',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                ),
              )
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            children: [
              Text(
                'App Settings',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Preferred Practice Days',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 26,
                width: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
                child: Center(
                    child: Text(
                  'M',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
              ),
              Container(
                height: 26,
                width: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.transparent,
                ),
                child: Center(
                    child: Text(
                  'T',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
              ),
              Container(
                height: 26,
                width: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
                child: Center(
                    child: Text(
                  'W',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
              ),
              Container(
                height: 26,
                width: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.transparent,
                ),
                child: Center(
                    child: Text(
                  'T',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
              ),
              Container(
                height: 26,
                width: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
                child: Center(
                    child: Text(
                  'F',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
              ),
              Container(
                height: 26,
                width: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.transparent,
                ),
                child: Center(
                    child: Text(
                  'S',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
              ),
              Container(
                height: 26,
                width: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.transparent,
                ),
                child: Center(
                    child: Text(
                  'S',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Preferred Time Units',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                ),
              ),
              Text(
                'Minutes',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Practice Reminders',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 13,
                  fontStyle: FontStyle.normal,
                ),
              ),
              CupertinoSwitch(
                value: false,
                onChanged: (value) {
                  setState(() {});
                },
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Reminder Times',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                ),
              ),
              Text(
                'Afternoon',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'App theme',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                ),
              ),
              Text(
                'Dark',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                ),
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Text(
                'User Background',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Gender',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                ),
              ),
              Text(
                'Female',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                ),
              )
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Age',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                ),
              ),
              Text(
                '24',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                ),
              )
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Related Experience',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                ),
              ),
              Text(
                'Athlete',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                ),
              )
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Direct Experience',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                ),
              ),
              Text(
                'Pro Jumper',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                ),
              )
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Direct Experience Hours',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                ),
              ),
              Text(
                '200',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                ),
              )
            ],
          ),
        ]),
      )),
    );
  }
}
