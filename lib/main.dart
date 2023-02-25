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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.center,
          child: Container(
            color: Colors.black,
            width: 200,
            height: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
            padding: EdgeInsets.all(8),
            width: 100,
            height: 100,color: Colors.green,
                  ),
                  Container(
            padding: EdgeInsets.all(8),
            width: 100,
            height: 100,color: Colors.yellow,
          ),
                  Container(
            padding: EdgeInsets.all(8),
            width: 100,
            height: 100,color: Colors.red,
          ),
                ],
              )),
        ),
      ),
    );
  }
}
