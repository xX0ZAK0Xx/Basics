import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  // emn ekta function, jeta app ke run koraabe
  runApp(MyApp(
    name: "Rabby",
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          actions: const [
            Icon(Icons.add, size: 30),
            Icon(Icons.menu, size: 30),
          ],
          title: const Text(
            "This is Zayeds HomePage",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Container(
          child: Column(
            children: [
              //Row 1 (Profile Information)
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Image
                    ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: const Image(
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWoTaZcdCiIyW7s1Fz8zUBsxUU6i23uktTkaII8QQaOQ&s'),
                          height: 100,
                          width: 100,
                        )),

                    //Post Colum
                    Column(
                      children: [
                        Text(
                          "84",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Text("Posts", style: TextStyle(fontSize: 22)),
                      ],
                    ),

                    //Follower Column
                    Column(
                      children: [
                        Text(
                          "1500",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Text("Followers", style: TextStyle(fontSize: 22)),
                      ],
                    ),

                    //Folowing Column
                    Column(
                      children: [
                        Text(
                          "75",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        GestureDetector(
                            onTap: () {
                              print("I am following 75 people");
                            },
                            child: Text("Following",
                                style: TextStyle(fontSize: 22))),
                      ],
                    )
                  ],
                ),
              ),

              // Button
              ElevatedButton(
                onPressed: () {},
                child: Text("Edit Profile"),
                style: ButtonStyle(),
              ),

              // Row 2 (Stories)
              Row(
                children: [
                  //Image

                  //Image

                  //Image
                ],
              ),

              //Personal Image
              Image(
                image: AssetImage('assets/images.jpeg'),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.home),
            Icon(Icons.search),
            Icon(Icons.video_call),
            Icon(Icons.shopping_bag),
            Icon(Icons.person),
          ],
        )),
      ),
    );
  }
}

/*
1. Row, 
2. Column
3. Stack
*/
