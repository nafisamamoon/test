import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:photo/add_patient.dart';
import 'package:photo/admin.dart';
import 'package:photo/doctor_detail.dart';
import 'package:photo/login.dart';
import 'dart:convert';

import 'package:photo/home.dart';
import 'package:photo/test.dart';
import 'package:photo/welcome.dart';
void main() {
  runApp(
     myapp(),
  );
}
class myapp extends StatelessWidget {
  const myapp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
home: welcome()
    );
  }
}

