

import 'package:flutter/material.dart';

class SingleChildWidget extends StatelessWidget {
  const SingleChildWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text('Flutter Demo'),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.red,
          child: const Center(
            child: Text('Hello Kanu'),
          ),
        ),
      ),
    );
  }
}

