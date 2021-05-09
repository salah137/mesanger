import 'package:flutter/material.dart';
import 'Mb.dart';
import 'Data.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Color.fromRGBO(59, 55, 54, 1),
            child: Icon(Icons.camera),
          ),
          CircleAvatar(
            radius: 30,
            backgroundColor: Color.fromRGBO(59, 55, 54, 1),
            child: Icon(
              Icons.pin_drop,
            ),
          ),
        ],
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(
              "https://steamuserimages-a.akamaihd.net/ugc/940586530515504757/CDDE77CB810474E1C07B945E40AE4713141AFD76/"),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromRGBO(59, 55, 54, 1),
            ),
            child: TextField(
              decoration: InputDecoration(
                 prefixIcon: Icon(Icons.search),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(width: 3),
                ),
                disabledBorder:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(width: 3),
                ), 
              ),
            ),
          ),
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: users.length,
              itemBuilder: (_,i)=>Container(
                margin: EdgeInsets.all(10),
                child: CircleAvatar(backgroundImage: NetworkImage(users[i].imageUrl),radius: 30,),
              ),
        
            ),
          ),
          Container(
            height: 700,
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (_,i)=>Mbd(user: users[i],)
              ),
          )
        ],
      ),
    );
  }
}
