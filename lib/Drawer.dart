import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
      );
  }
}