import 'package:flutter/material.dart';

import '../model/character.dart';

class ListViewEx extends StatelessWidget {

  List<Character> _allcharacters = Character.getAllCharacters();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 10,
        leading: Icon(Icons.menu),
        title: Text("데스노트", style: TextStyle(color: Colors.white),),

      ),

      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: getHomePageBody(context),
        ),
      ),


    );
  }

  getHomePageBody(BuildContext context) {
    return ListView.builder(
      itemCount: _allcharacters.length,
      itemBuilder: _getItemUI,
      padding: EdgeInsets.all(0.0),
    );
  }

  Widget _getItemUI(BuildContext context, int index) {
    return Expanded(child: Container(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      width: double.infinity,

      decoration: BoxDecoration(
        color: Colors.transparent,
      ),

      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
          Container(
            child:  Image.asset(
              "assets/images/" + _allcharacters[index].image!,
              height: 80.0,
              width: 80.0,
              fit: BoxFit.cover,
            ),
    ),
            SizedBox(width: 40,),
            Column(
              children: [
                Text(
                  _allcharacters[index].name!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  _allcharacters[index].description!,
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.white70,
                    fontSize: 15,
                  ),

                )
              ],
            ),
      ],
            )




        ],
      )
      ,
    ),
    );
  }
}

