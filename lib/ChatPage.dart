import 'package:flutter/material.dart';

class ChatDescriptionPage extends StatefulWidget {
  String name;
  String description;
  String message;

  ChatDescriptionPage(
      {required this.name,
      required this.message,
      required this.description,
      Key? key})
      : super(key: key);

  @override
  State<ChatDescriptionPage> createState() => _ChatDescriptionPageState();
}

class _ChatDescriptionPageState extends State<ChatDescriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(widget.message,style: const TextStyle(
                fontSize: 25,
                color: Colors.red,

              ),),
            ),
          ),
          Expanded(
            flex: 18,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 50,horizontal: 60),
              child: Text(widget.description,style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),),
            ),
          )
        ],
      )
    );
  }
}
