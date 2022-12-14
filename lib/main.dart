import 'package:agri_suit/screens/home_screen.dart';
import 'package:agri_suit/screens/input_screen.dart';
import 'package:agri_suit/screens/listview_screen.dart';
import 'package:agri_suit/screens/players_grid_screen.dart';
import 'package:agri_suit/screens/players_list_screen.dart';
import 'package:flutter/material.dart';

void main() {

  MyApp myApp = MyApp();
  runApp(myApp);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Four PM App',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const PlayersListScreen(),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
