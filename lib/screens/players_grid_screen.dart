import 'package:agri_suit/utility/data_store.dart';
import 'package:flutter/material.dart';

import '../models/player.dart';

class PlayersGridScreen extends StatelessWidget {
  const PlayersGridScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.green,
              Colors.blue,
              Colors.brown,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomRight
          )
        ),
        child: GridView.builder(

            itemCount: DataStore().players.length,
            gridDelegate:const  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ), itemBuilder: (context, index){

              Player player = DataStore().players[index];

          return Card(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(player.name),
                Text(player.jerseyNum.toString()),
                Text(player.role),
                Image.asset(player.rolePic, width: 50, height: 50, fit: BoxFit.fill,)
              ],
            ),
          );
        }),
      ),
    );
  }
}
