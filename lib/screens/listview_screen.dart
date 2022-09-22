import 'package:flutter/material.dart';

class ListviewScreen extends StatefulWidget {
  const ListviewScreen({Key? key}) : super(key: key);

  @override
  State<ListviewScreen> createState() => _ListviewScreenState();
}

class _ListviewScreenState extends State<ListviewScreen> {

  final playersList = [
    'Babar',
    'Rizwan',
    'Haider',
    'Iftikhar',
    'Nawaz',
    'Shan',
    'Khushdil',
    'Usman',
    'Naseem',
    'Dahani',
    'Rauf',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView Example'),
        ),
        body: ListView.builder(
            itemCount: playersList.length,

            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.purple,
                    child: Text('${index+1}'),
                  ),
                  title: Text(playersList[index]),
                ),
              );
            }));
  }
}

/*
GridView(

        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 150,
        ),

        children: [

          Container(color: Colors.red,),
          Container(color: Colors.green,),
          Text('yes'),
          Icon(Icons.shop),
          Container(color: Colors.blue,),
          FlutterLogo(),

          Container(color: Colors.orange,),
          Container(color: Colors.orange,),
          Container(color: Colors.blue,),
          Container(color: Colors.orange,),
          Container(color: Colors.red,),
          Container(color: Colors.green,),
          Container(color: Colors.blue,),
          Container(color: Colors.red,),

          Container(color: Colors.orange,),
          Container(color: Colors.red,),
          Container(color: Colors.green,),
          Container(color: Colors.blue,),

        ],
      ),
 */

/*
ListView.builder(

          itemCount: 2000,

          itemBuilder: (context,index){
        return Container(
          margin: const EdgeInsets.only(bottom: 10),
          color: Colors.yellow,
          alignment: Alignment.center,
            height: 100,
            child: Text('$index'));
      })
 */
