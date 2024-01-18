// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:walkin/introduction/introductionpage1.dart';
import 'package:walkin/login_register/registerpage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF16171B),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset('assets/logo.png'),
                  Positioned(
                    child: Text(
                      'LOGO',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 24,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                'Welcome',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Please sign in or create an account',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 40),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFF303236),
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Colors.grey),
                          prefixIcon: Image.asset(
                              'assets/sms.png'), // Add your email icon
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 50,
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFF303236),
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.grey),
                          prefixIcon: Image.asset('assets/lock.png'),
                          suffixIcon: Image.asset('assets/Hide.png'),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 57,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => IntroPage1()),
                  );
                },
                child: Container(
                  height: 50,
                  width: 270,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(35)),
                  child: Center(
                    child: Text(
                      'Sign In',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 160),
              GestureDetector(
                onTap: () {
                  // Navigate to RegisterPage when "Create Account" is tapped
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage()),
                  );
                },
                child: RichText(
                  text: TextSpan(
                    children: const [
                      TextSpan(
                        text: "Don't have an account yet? ",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                      TextSpan(
                        text: 'Create Account',
                        style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
