import "package:flutter/material.dart";

void main() {
  runApp(
    const MaterialApp(
      home: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    const double iconSize = 40.0;
    const TextStyle cardText = TextStyle(color: Colors.brown, fontSize: 25.0);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateless Widget"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            MyCard(
              title: const Text("Love Flutter",style: cardText), 
              icon: const Icon(Icons.favorite,size: iconSize,color: Colors.red)
            ),
            MyCard(
              title: const Text("I need to learn the updated", style: cardText), 
              icon: const Icon(Icons.new_releases,size: iconSize,color: Colors.amber)
            ),
            MyCard(
              title: const Text("What's more?",style: cardText), 
              icon: const Icon(Icons.search,size: iconSize,color: Colors.blue)
            ),
          ],
        )
      )
    );
  }
}

// ignore: must_be_immutable
class MyCard extends StatelessWidget {
  Widget title;
  Widget icon;
  
  MyCard({super.key, required this.title,required this.icon});

  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.only(bottom: 5.0),
        child: Card(
          child: Container(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: <Widget>[title,icon],
            )
          )
        )
      );
  }
}