// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:walkin/exercise/setup_screen.dart';

class IntroPage7 extends StatelessWidget {
  const IntroPage7({super.key});

  @override
  Widget build(BuildContext context) {
    double progressValue = 1.0;
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
        title: Text('App Features', style: TextStyle(color: Colors.white)),
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
              height: 70,
            ),
            Center(child: Image.asset('assets/community.png')),
            SizedBox(
              height: 30,
            ),
            buildRow(
                'Allows communication and feedback of captures with friends or teachers'),
            buildRow('Comparison of practice consistency and time invested'),
            buildRow(
                'Allows practice tips and practices resources to be shared'),
            SizedBox(
              height: 80,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SetUpScreen()),
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
            ),
            SizedBox(
              height: 38,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'App Features',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    '5/5',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                width: double.infinity,
                height: 5,
                decoration: BoxDecoration(
                  color: Color.fromARGB(0, 0, 0, 0),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: FractionallySizedBox(
                  widthFactor: progressValue,
                  alignment: Alignment.centerLeft,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ),
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
