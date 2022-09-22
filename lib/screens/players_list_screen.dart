
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/player.dart';
import '../utility/data_store.dart';

class PlayersListScreen extends StatelessWidget {
  const PlayersListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: const Text('Pak Players'),
      ),
      body: ListView.builder(
          itemCount: DataStore().players.length,
          itemBuilder: (context, index){

            Player player = DataStore().players[index];

            return Card(
              child: ListTile(
                onTap: (){
                  
                },
                leading: Stack(
                  alignment: Alignment.center,
                  children: [
                    const Icon(Icons.shield_rounded, color: Colors.green, size: 40,),
                    Text(player.jerseyNum.toString(), style: TextStyle(color: Colors.white),),
                  ],
                ),
                title: Text(player.name),
                subtitle: Text(player.role),
                trailing: Image.asset(player.rolePic, width: 40, height: 40,fit: BoxFit.fill,),
              ),
            );
      }),
    );
  }
}
