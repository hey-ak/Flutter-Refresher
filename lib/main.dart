import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'New App',
    home: Homepage(),
    theme: ThemeData(primarySwatch: Colors.purple),
  ));
}

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
              child: Column(
            children: [
              Image.asset(
                "assets/login.jpg",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                myText,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: _newControler,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter Name Here",
                    labelText: "Name",
                  ),
                ),
              )
            ],
          )),
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Akshay"),
              accountEmail: Text("akshay0127.be21@chitkara.edu.in"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8TWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
              ),
            ),

            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("Akshay"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("akshay0127.be21@chitkara.edu.in"),
              trailing: Icon(Icons.send),
            ),
            // ListTile(
            //   leading: Icon(Icons.email),
            //   title: Text("Email"),
            //   subtitle: Text("akshay0127.be21@chitkara.edu.in"),
            //   trailing: Icon(Icons.send),
            // ),
            // ListTile(
            //   leading: Icon(Icons.email),
            //   title: Text("Email"),
            //   subtitle: Text("akshay0127.be21@chitkara.edu.in"),
            //   trailing: Icon(Icons.send),
            // ),
          ],
        ),
      ),
    );
  }
}
