import 'package:flutter/material.dart';

class LVDemo1 extends StatelessWidget {
  const LVDemo1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Courses'),
      ),
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Card(
              elevation: 10.0,
              child: ListTile(
                title: Text('.Net'),
                trailing: Icon(Icons.forward),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Card(
              elevation: 10.0,
              child: ListTile(
                title: Text('Databases'),
                trailing: Icon(Icons.forward),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
