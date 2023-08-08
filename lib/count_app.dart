import 'package:flutter/material.dart';

class CountApp extends StatefulWidget {
  const CountApp({Key? key}) : super(key: key);

  @override
  State<CountApp> createState() => _CountAppState();
}

class _CountAppState extends State<CountApp> {
  int x=0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: SafeArea(
        child: Center(child: Text(x.toString(), style: TextStyle(fontSize: 50),)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          x++;
          setState(() {

          });
          print(x.toString());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}


