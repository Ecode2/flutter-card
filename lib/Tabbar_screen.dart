import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  _TabBarScreenState createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> with SingleTickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    late final TabController tabController;

    @override
    void initState() {
      tabController = TabController(length: 3, vsync: this);
      super.initState();
    }

    @override
    void dispose() {
      tabController.dispose();
      super.dispose();
    }
    return Scaffold(
      appBar: AppBar( backgroundColor: Colors.green, title: const Text("WhatsApp"), bottom: TabBar(tabs: const[
        Tab(text: "Chat"),
        Tab(text: "Update"),
        Tab(text: "Calls"),
      ], controller: tabController,),),
      body: TabBarView(children: [
        Container(
          child: const Icon(Icons.chat_bubble_outline_outlined),
        ),
        Container(
          child: const Icon(Icons.person_3_outlined),
        ),
        Container(
          child: const Icon(Icons.call_made_outlined),
        ),
      ],),
    );

  }
}
