// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Please enter your details below',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    buildTextField('Create Username', 'assets/user.png', ''),
                    SizedBox(height: 10),
                    buildTextField('Email', 'assets/sms.png', ''),
                    SizedBox(height: 10),
                    buildTextField(
                        'Password', 'assets/lock.png', 'assets/hide.png'),
                    SizedBox(height: 10),
                    buildTextField('Confirm Password', 'assets/lock.png',
                        'assets/hide.png'),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              GestureDetector(
                onTap: () {
                  // Your logic for handling the Create Account button tap
                },
                child: Container(
                  height: 50,
                  width: 270,
                  decoration: BoxDecoration(
                    color:
                        Color.fromARGB(255, 223, 208, 78), // Background color
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Center(
                    child: Text(
                      'Create Account',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black, // Text color
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: RichText(
                  text: TextSpan(
                    children: const [
                      TextSpan(
                        text: "Have an account? ",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                      TextSpan(
                        text: 'Sign In',
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

  Widget buildTextField(
      String hintText, String prefixImage, String suffixImage) {
    return SizedBox(
      height: 50,
      child: TextField(
        style: TextStyle(color: Colors.white),
        obscureText: hintText
            .contains("Password"), // Set obscureText for password fields
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFF303236),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey),
          prefixIcon: Image.asset(prefixImage),
          suffixIcon: hintText.contains("Password")
              ? IconButton(
                  onPressed: () {
                    // Your logic for handling the hide/show password
                  },
                  icon: Image.asset(suffixImage),
                )
              : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
