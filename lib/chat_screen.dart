import 'package:flutter/material.dart';
import 'package:flutterchatapp/chat_message.dart';

class ChatScreen extends StatefulWidget {
  @override
  State createState() => new ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = new TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage>[];
  void _handleSubmitted(String text) {
    _textController.clear();
  }

  Widget _textComposerWidget() {
    return IconTheme(
      data: new IconThemeData(
        color: Colors.blue,
      ),
      child: new Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: new Row(
          children: <Widget>[
            new Flexible(
              child: new TextField(
                decoration:
                    new InputDecoration.collapsed(hintText: "Send a message"),
                controller: _textController,
                onSubmitted: _handleSubmitted,
              ),
            ),
            new Container(
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                child: new IconButton(
                  icon: new Icon(Icons.send),
                  onPressed: () => _handleSubmitted(_textController.text),
                )),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _textComposerWidget();
  }
}
