import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'New App',
    home: Homepage(),
  ));
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NewApp"),
        

      ),
      body: Center(child: Container(child: Text("Hello World of Flutter"),)),
      
    );
  }
}