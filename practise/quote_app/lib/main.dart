// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteApp(),
  ));
}

class QuoteApp extends StatefulWidget {
  QuoteApp({super.key});

  @override
  State<QuoteApp> createState() => _QuoteAppState();
}

class _QuoteAppState extends State<QuoteApp> {
  List<Quotes> quotes = [
    Quotes(author: "amshu G M", quote: "chaos is a ladder"),
    Quotes(author: "amshu G M", quote: "chaos is a ladder"),
    Quotes(author: "amshu G M", quote: "chaos is a ladder"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[600],
        appBar: AppBar(
          title: Text("Quote APP",
              style: TextStyle(
                  color: const Color.fromRGBO(255, 215, 64, 1))),
          backgroundColor: Colors.grey[800],
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ...quotes
                .map((quote) => MakeCard(
                    quote: quote,
                    delete: () {
                      setState(() {
                        quotes.remove(quote);
                      });
                    }))
                .toList(),
            Padding(
                padding: EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 0.0),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => Colors.amber)),
                    onPressed: () {
                      String? author;
                      String? quote;
                      final GlobalKey<FormState> formKey =
                          GlobalKey<FormState>();

                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Add a quote'),
                            content: Container(
                              padding: EdgeInsets.all(16.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Form(
                                key: formKey,
                                child: Column(
                                  children: <Widget>[
                                    TextFormField(
                                      style: TextStyle(fontSize: 14.0),
                                      decoration: InputDecoration(
                                        hintText: 'Author',
                                      ),
                                      onSaved: (String? value) {
                                        author = value;
                                      },
                                    ),
                                    SizedBox(height: 8.0),
                                    TextFormField(
                                      style: TextStyle(fontSize: 14.0),
                                      decoration: InputDecoration(
                                        hintText: 'Quote',
                                      ),
                                      onSaved: (String? value) {
                                        quote = value;
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            actions: <Widget>[
                              TextButton(
                                child: Text('Submit'),
                                onPressed: () {
                                  if (formKey.currentState?.validate() ??
                                      false) {
                                    formKey.currentState?.save();
                                    setState(() {
                                      if (quotes.length < 5) {
                                        quotes.add(Quotes(
                                            author: author!, quote: quote!));
                                      }
                                    });
                                    Navigator.of(context).pop();
                                  }
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Text("add items")))
          ],
        ));
  }
}