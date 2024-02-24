
import 'package:flutter/material.dart';
import 'package:assignment/ProfileCard.dart';

import 'Tabbar_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: ProfileCard(),
      home: TabBarScreen(),
      //home: HomePage(),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.limeAccent,
        leading: const Icon(Icons.arrow_back, color: Colors.grey),
        title: const Text('Result', style: TextStyle(color: Colors.greenAccent),),
      ),
      body: Container(
        color: Colors.blueGrey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
                ),
                height: 70,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total Questions', style: TextStyle(fontSize: 20),),
                      Text('9', style: TextStyle(color: Colors.pink, fontSize: 20))
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)
                ),
                height: 70,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Score', style: TextStyle(fontSize: 20)),
                      Text('55.5555556%', style: TextStyle(color: Colors.pink, fontSize: 20))
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)
                ),
                height: 70,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Correct Answer', style: TextStyle(fontSize: 20)),
                      Text('5/9', style: TextStyle(color: Colors.pink, fontSize: 20))
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)
                ),
                height: 70,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Incorrect Answer', style: TextStyle(fontSize: 20)),
                      Text('4/9', style: TextStyle(color: Colors.pink, fontSize: 20))
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10,),
            ],
          ),
        ),
      )
      );
  }

}