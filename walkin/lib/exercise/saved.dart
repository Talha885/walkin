// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SavedPage extends StatefulWidget {
  const SavedPage({super.key});

  @override
  State<SavedPage> createState() => _SavedPageState();
}

class _SavedPageState extends State<SavedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF16171B),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: Image.asset(
            'assets/saved.png',
            color: Colors.white,
          )),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              'saved!',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
