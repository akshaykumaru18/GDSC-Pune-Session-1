import 'package:first_app/ChatPage.dart';
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
            title: const Text(
              'Akshay',
              style: TextStyle(fontSize: 22),
            ),
            subtitle: const Text(
              'Net is slow',
              style: TextStyle(fontSize: 18),
            ),
            trailing: Column(
              children: const [
                Text('Now'),
                Text('1'),
              ],
            ),
            onTap: () {
              debugPrint('Clicked the Chat Item');
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => ChatDescriptionPage(
                      name: 'Kumar U',
                      message: 'Hey Guys welcome to Stream Day Session 2',
                      description:
                          'Hello Keep Watching.. Surprise at the end buddy')));
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text(
              'Ayush',
              style: TextStyle(fontSize: 22),
            ),
            subtitle: const Text(
              'Net is slow',
              style: TextStyle(fontSize: 18),
            ),
            trailing: Column(
              children: const [
                Text('Now'),
                Text('1'),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text(
              'Shreya',
              style: TextStyle(fontSize: 22),
            ),
            subtitle: const Text(
              'Net is slow',
              style: TextStyle(fontSize: 18),
            ),
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
