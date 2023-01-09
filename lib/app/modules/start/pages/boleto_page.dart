import 'package:flutter/material.dart';

class BoletoPage extends StatefulWidget {
  final String title;
  const BoletoPage({Key? key, this.title = 'BoletoPage'}) : super(key: key);
  @override
  BoletoPageState createState() => BoletoPageState();
}
class BoletoPageState extends State<BoletoPage> {
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