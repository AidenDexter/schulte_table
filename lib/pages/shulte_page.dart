import 'package:flutter/material.dart';
import 'dart:math';

class ShultePage extends StatefulWidget {
  const ShultePage({super.key});

  @override
  State<ShultePage> createState() => _ShultePageState();
}

class _ShultePageState extends State<ShultePage> {
  @override
  Widget build(BuildContext context) {
    var randomNumber = List.generate(25, (index) => index + 1);
    randomNumber.shuffle();
    return Scaffold(
      backgroundColor: Colors.green.shade700,
      appBar: AppBar(backgroundColor: Colors.red),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5, mainAxisExtent: 80, mainAxisSpacing: 5, crossAxisSpacing: 5),
          itemCount: 25,
          itemBuilder: (context, index) => GridTile(
            // child: GestureDetector(
            // onTap: (() {}),
            child: Container(
              height: 50,
              width: 50,
              color: Colors.amber,
              child: Center(child: Text(randomNumber[index].toString())),
            ),
            // ),
          ),
        ),
      ),
    );
  }
}
