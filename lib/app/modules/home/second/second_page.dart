import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final String title;
  const SecondPage({Key? key, this.title = 'SecondPage'}) : super(key: key);
  @override
  SecondPageState createState() => SecondPageState();
}

class SecondPageState extends State<SecondPage> {
  // final SecondStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
