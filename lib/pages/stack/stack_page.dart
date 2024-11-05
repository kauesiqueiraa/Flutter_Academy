import 'package:flutter/material.dart';

class StackPage extends StatefulWidget {
  const StackPage({ super.key });

  @override
  StackPageState createState() => StackPageState();
}

class StackPageState extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack"),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            color: Colors.deepPurple,
          ),
          Container(
            color: Colors.amber,
            width: 300,
            height: 300,
          ),
          // Align(
          //   alignment: Alignment.topRight,
          //   child: Container(
          //     color: Colors.blue,
          //     width: 150,
          //     height: 150,
          //   ),
          // ),
          Positioned(
            // top: 40,
            right: 100,
            bottom: 20,
            child: Container(
                color: Colors.blue,
                width: 150,
                height: 150,
            ),
          ),
        ],
      ),  
    );
  }
}