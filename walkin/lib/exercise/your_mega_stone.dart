// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:walkin/exercise/general_settings.dart';

class YourMegaStone extends StatefulWidget {
  const YourMegaStone({super.key});

  @override
  State<YourMegaStone> createState() => _YourMegaStoneState();
}

class _YourMegaStoneState extends State<YourMegaStone> {
  double progressValue = 0.8;
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
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  'Your Megastone',
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
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Your significant target',
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
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'This is a sizeable minimum amount of time to invest into a new exercise that will be a definitive marker for progression. \n\nBy default we have suggested a minimum number of hours we would recommend based on your exercise.',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              children: [
                Icon(
                  Icons.alarm,
                  color: Colors.white,
                  size: 18,
                ),
                SizedBox(
                  width: 17,
                ),
                Expanded(
                  child: Text(
                    'Megastone',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: Icon(Icons.remove),
                ),
                Row(
                  children: [
                    Text(
                      '30',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 74,
                          color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'h',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: Icon(Icons.add),
                ),
              ],
            ),
            SizedBox(
              height: 150,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GeneralSetting()),
                );
              },
              child: Center(
                child: Container(
                  height: 38,
                  width: 140,
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
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Progress',
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
                    '4/5',
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
        )),
      ),
    );
  }
}
