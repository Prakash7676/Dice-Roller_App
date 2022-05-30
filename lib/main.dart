import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dice App",
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int diceNumber = 1;

  changeDice() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dice Roller"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 243, 4, 4),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            //Image
            Center(
                child: Image.asset(
              "assets/$diceNumber.png",
              height: 250,
              width: 250,
            )),
            //Button
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                color: const Color.fromARGB(255, 33, 212, 243),
                onPressed: changeDice,
                child: const Text(
                  "ROLL DICE",
                  style: TextStyle(
                      fontSize: 15, color: Color.fromARGB(255, 240, 239, 239)),
                ),
              ),
            ),
            const SizedBox(height: 70),
            //Text
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("#Flutter with Prakash",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 17, 5, 192))),
            ),
          ],
        ),
      ),
    );
  }
}
