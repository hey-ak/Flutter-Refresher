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
      body: Center(
          child: Container(
        padding: EdgeInsets.all(5),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(231, 158, 158, 158),
              blurRadius: 5,
              offset: Offset(2.0,5.0),),
            ],
            borderRadius: BorderRadius.circular(10),
            color: Colors.teal,
            gradient: LinearGradient(colors: [Colors.yellow, Colors.red])),
        width: 100,
        height: 100,
        child: Text( textAlign:TextAlign.center, "I am a Box",style: TextStyle(
          fontSize: 20,color:Colors.white ,fontWeight:FontWeight.bold),),
      )),
    );
  }
}
