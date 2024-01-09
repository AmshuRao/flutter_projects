// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home:QuoteApp(),
  ));
}

class QuoteApp extends StatefulWidget {
  QuoteApp({super.key});

  @override
  State<QuoteApp> createState() => _QuoteAppState();
}

class _QuoteAppState extends State<QuoteApp> {
  List<Quotes> quotes = [
    Quotes(author: "amshu G M",quote: "chaos is a ladder"),
    Quotes(author: "amshu G M",quote: "chaos is a ladder"),
    Quotes(author: "amshu G M",quote: "chaos is a ladder"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar:AppBar(
        title: Text("Quote APP",
          style:TextStyle(
            color: Colors.amberAccent
          )
        ),
        backgroundColor: Colors.grey[800],
        centerTitle: true,
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: 
          (quotes.map((quote)=>MakeCard(
            quote:quote,
            delete:(){
              setState((){
                quotes.remove(quote);
              });
            }
          ))).toList()
      ,
      )
    );
  }
}