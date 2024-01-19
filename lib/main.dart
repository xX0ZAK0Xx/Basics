import 'package:flutter/material.dart';

void main() {
  // emn ekta function, jeta app ke run koraabe
  runApp(MyApp(name: "Rabby",));
}

class MyApp extends StatelessWidget {

  const MyApp({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 64, 0),
          actions: const [
            Icon(Icons.search, size: 30, color:  Colors.white,),
          ],
          
          title: 
            const Text(
              "This is Zayeds HomePage", 
              style: TextStyle(
                color: Colors.white, 
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
          ),
          leading: const Icon(Icons.menu, color:  Colors.white,),
        ),
        backgroundColor: Colors.green,
        body: Center(
          child: Text(name, style: TextStyle(color: const Color.fromARGB(255, 255, 0, 0), fontSize: 70),
          ),
        ),
      ),
    );
  }
}
