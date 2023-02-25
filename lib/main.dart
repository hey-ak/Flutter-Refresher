import 'package:flutter/material.dart';
import 'package:newapp/Drawer.dart';
import 'package:newapp/Pages/HomePage.dart';
import 'package:newapp/bgimage.dart';
import 'package:newapp/changeNameCard.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(
    title: 'New App',
    home: Homepage(),
    theme: ThemeData(primarySwatch: Colors.purple),
  ));
}
