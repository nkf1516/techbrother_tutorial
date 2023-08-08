import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text(
          'Flutter Demo',
          style: TextStyle(fontSize: 30, fontFamily: 'Pacifo',color: Colors.black, decoration: TextDecoration.underline ),
        ),
        backgroundColor: Colors.pink,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('Kanan'), Icon(Icons.ac_unit), Text('kanan')],
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.yellow,
            child: const Center(child: Text('Hello My Bakavas Life')),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
            child: const Center(child: Text('Hello My Lonely Life')),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.green,
            child: const Center(child: Text('Hello My Sad Life')),
          ),
        ],
      ),
    );
  }
}
