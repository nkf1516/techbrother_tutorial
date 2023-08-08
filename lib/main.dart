import 'package:flutter/material.dart';
import 'package:techbrother_tutorial/helpymoto.dart';
import 'package:techbrother_tutorial/hmorderdetails.dart';
import 'package:techbrother_tutorial/customer.dart';
import 'package:techbrother_tutorial/home_page.dart';
import 'package:techbrother_tutorial/login_page.dart';
import 'package:techbrother_tutorial/count_app.dart';
import 'package:techbrother_tutorial/LotteryApp.dart';
import 'package:techbrother_tutorial/widget.dart';

import 'customer.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
    MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CustomerOrderDetails(),
    );

  }
}




