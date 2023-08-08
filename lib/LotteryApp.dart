import 'dart:typed_data';
import 'dart:math';

import 'package:flutter/material.dart';

class LotteryApp extends StatefulWidget {
  LotteryApp({Key? key}) : super(key: key);
  @override
  State<LotteryApp> createState() => _LotteryAppState();
}

class _LotteryAppState extends State<LotteryApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Lottery App')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text('Lottery winning number is  4')),
          SizedBox(
            height: 20,
          ),

          Container(
            height: 250,
            width: 300,
            decoration: BoxDecoration(
              color: x==4 ? Colors.pinkAccent : Colors.grey.withOpacity(.3),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: x==4 ?  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  SizedBox(
                    height: 15,
                  ),
                  Text('Congratulation you have won the Lottery, your number is $x', textAlign:TextAlign.center),
                  Icon(Icons.done_all, color: Colors.green, size: 35,),
                ],
              ) :
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                 Icon(
                    Icons.error,
                    color: Colors.red,
                    size: 35,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text('Better Luck next time your number is $x\n try again', textAlign:TextAlign.center),

                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

          x=random.nextInt(6);
          print(x);
          setState(() {

          });
        },
        child: Icon( x > 5 ? Icons.add_alarm_rounded : Icons.refresh),
      ),
    );
  }
}
