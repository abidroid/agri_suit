import '../models/player.dart';

class DataStore
{
  List<Player> players = [
    Player(jerseyNum: 56, name: 'Babar', role: 'Batsman', rolePic: 'images/cricket_items/batsman.jpeg'),
    Player(jerseyNum: 16, name: 'Rizwan', role: 'WicketKeeper - Batsman', rolePic: 'images/cricket_items/wk.jpeg'),
    Player(jerseyNum: 60, name: 'Shan Masood', role: 'Batsman', rolePic: 'images/cricket_items/batsman.jpeg'),
    Player(jerseyNum: 18, name: 'Nawaz', role: 'All-Rounder', rolePic:'images/cricket_items/ar.jpeg'),
    Player(jerseyNum: 77, name: 'Ifitikhar', role: 'Batsman', rolePic: 'images/cricket_items/batsman.jpeg'),
    Player(jerseyNum: 65, name: 'Naseem', role: 'Bowler', rolePic: 'images/cricket_items/bowler.jpeg'),
    Player(jerseyNum: 76, name: 'Rauf', role: 'Bowler', rolePic: 'images/cricket_items/bowler.jpeg'),
  ];
}