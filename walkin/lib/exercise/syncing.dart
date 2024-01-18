// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SyncingPage extends StatefulWidget {
  const SyncingPage({super.key});

  @override
  State<SyncingPage> createState() => _SyncingPageState();
}

class _SyncingPageState extends State<SyncingPage> {
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
            'assets/syncing.png',
            color: Colors.white,
          )),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              'syncing...',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
