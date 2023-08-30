import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Myform(),
    );
  }
}

class Myform extends StatefulWidget {
  @override
  State<Myform> createState() => _MyformState();
}

class _MyformState extends State<Myform> {
  final mycontroller = TextEditingController();
  String textcontainer=' ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputforms'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(hintText: 'Enter Value'),
              controller: mycontroller,
            ),
          ),

          Padding(padding: EdgeInsets.all(100),
              child: Text(textcontainer,style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
           textcontainer=mycontroller.text;
          });
        },

        tooltip: 'Text',
        child: Icon(Icons.text_fields),
      ),
    );
  }
}
