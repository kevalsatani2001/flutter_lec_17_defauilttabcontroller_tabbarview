import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Tab_bar extends StatefulWidget {
  const Tab_bar({Key? key}) : super(key: key);

  @override
  State<Tab_bar> createState() => _Tab_barState();
}

class _Tab_barState extends State<Tab_bar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              title: const Text("WhatsApp"),
              backgroundColor: Colors.green,
              actions: [
                Row(
                  children: const [
                    Icon(Icons.search),
                    Icon(Icons.more_vert_rounded),
                  ],
                ),
              ],
              bottom: const TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.photo_camera),
                ),
                Tab(
                  text: "CHATS",
                ),
                Tab(
                  text: "STATUS",
                ),
                Tab(text: "CALLS"),
              ]),
            ),
            body: const TabBarView(children: [
              Center(child: Text("photo")),
              Center(child: Text("Chats")),
              Center(child: Text("STATUS")),
              Center(child: Text("CALLS")),
            ])));
  }
}
