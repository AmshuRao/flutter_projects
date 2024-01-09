
// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'quotes.dart';
class MakeCard extends StatelessWidget {
  final Quotes quote;
  final Function delete;
  MakeCard({super.key, required this.quote,required this.delete});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child:Card(
      color: Colors.amber,
      child: Column(
        children: <Widget>[
          SizedBox(height:10.0),
          Text(
            quote.quote,
            style:TextStyle(
              fontSize: 16.0,
              color: Colors.grey[900]
            )
          ),
          SizedBox(height: 10.0,),
          Text(
            quote.author,
            style:TextStyle(
              fontSize: 16.0,
              color: Colors.grey[900]
            )
          ),
          SizedBox(height: 10.0,),
          TextButton.icon(
            onPressed: (){
              delete();
            },
            icon:Icon(Icons.delete),
            label: Text("delete quote"),
          )
        ],
      ),
    )
    );
  }
}