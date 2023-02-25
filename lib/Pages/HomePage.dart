import 'package:flutter/material.dart';

import '../Drawer.dart';
import '../changeNameCard.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController _newControler = TextEditingController();
  var myText = "Change Me";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("NewApp"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Card(
              child: ChangeNameCard(myText: myText, newControler: _newControler)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _newControler.text;
          setState(() {
            
          });
        },
        child: Icon(Icons.refresh),
      ),
      drawer: MyDrawer()
    );
  }
}