import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'WhatsApp',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        actions: const [Icon(Icons.search), Icon(Icons.more_vert_outlined)],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Akshay',style: TextStyle(fontSize: 22),),
            subtitle: const Text('Net is slow',style: TextStyle(fontSize: 18),),
            trailing: Column(
              children: const [
                Text('Now'),
                Text('1'),


              ],
            ),

          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Akshay',style: TextStyle(fontSize: 22),),
            subtitle: const Text('Net is slow',style: TextStyle(fontSize: 18),),
            trailing: Column(
              children: const [
                Text('Now'),
                Text('1'),


              ],
            ),

          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Akshay',style: TextStyle(fontSize: 22),),
            subtitle: const Text('Net is slow',style: TextStyle(fontSize: 18),),
            trailing: Column(
              children: const [
                Text('Now'),
                Text('1'),


              ],
            ),

          ),
        ],
      ),
    );
  }
}
