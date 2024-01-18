// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:walkin/introduction/introductionpage2.dart';

class IntroPage1 extends StatefulWidget {
  @override
  State<IntroPage1> createState() => _IntroPage1State();
}

class _IntroPage1State extends State<IntroPage1> {
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
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
                  Text(
                    'Background',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Container(
                    color: Colors.yellow,
                    width: 90,
                    height: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text(
                      'This app focuses on tracking skills that are subjective or hard quantify such as learning a new instrument or learning to climb. Our focus is the time invested as well as providing a means to capture your performance to help motivate and observe progression as you reach your goal!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IntroPage2()),
                );
              },
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
            )
          ],
        ),
      ),
    );
  }
}
