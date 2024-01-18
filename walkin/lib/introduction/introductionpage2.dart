// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:walkin/introduction/introductionpage3.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

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
        title: Text('Introduction', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Skip',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 600,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Center(child: Image.asset('assets/5.png')),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: Column(
                      children: [
                        Text(
                          'We believe',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          color: Colors.yellow,
                          width: 80,
                          height: 1,
                        ),
                      ],
                    ),
                  ),
                  buildRow(
                      'Capturing time invested into a new skill is essential'),
                  buildRow(
                      'Observing effort and progress over time helps you understand slow progression skills'),
                  buildRow(
                      'Understanding the right amount of consistency and time required ensures success'),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IntroPage3()),
                );
              },
              child: Center(
                child: Container(
                  height: 43,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text(
                      'Next',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildRow(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/right.png'),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
