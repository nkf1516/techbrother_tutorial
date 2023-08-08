import 'package:flutter/material.dart';



class MultiChildWidget extends StatelessWidget {
  const MultiChildWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Flutter Demo'),
        backgroundColor: Colors.pink,
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.yellow,
          )
        ],
      ),
    ) ;
  }
}
