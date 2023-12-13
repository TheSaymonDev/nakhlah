import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:task1/models/log_in_model.dart';
import 'package:task1/models/registration_model.dart';
import 'package:task1/reusable/styles.dart';
import 'package:task1/screens/home_page.dart';

class ApiClient {
  static Future<void> registerUserPost(
      RegistrationModel registrationModel, BuildContext context) async {
    final response = await http.post(
      Uri.parse('https://api.nakhlah.xyz/api/auth/local/register'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'username': registrationModel.name,
        'email': registrationModel.email,
        'password': registrationModel.password,
      }),
    );
    if (response.statusCode == 200) {
      myToastMessage(message: 'Registration Successful');
      // Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) =>  MobileNumberPage(),
      //     ));
    } else {
      myToastMessage(message: 'Regitration Failed Please Try Again');
    }
  }

  static Future<void> logInUserPost(
      LogInModel logInModel, BuildContext context) async {
    final response = await http.post(
      Uri.parse('https://api.nakhlah.xyz/api/auth/local'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'identifier': logInModel.identifier,
        'password': logInModel.password,
      }),
    );
    if (response.statusCode == 200) {
      myToastMessage(message: 'Login Successful');
      // //Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) =>  MyHomePage(),
      //     ));
    } else {
      myToastMessage(message: 'Login Failed Please Regitration');
    }
  }
}
