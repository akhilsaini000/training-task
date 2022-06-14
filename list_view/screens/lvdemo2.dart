import 'package:flutter/material.dart';

class LVDemo2 extends StatelessWidget {
  final List<String> _courses = ['DotNet', 'Databases', 'Python', 'java'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('courses'),
      ),
      body: ListView.separated(
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10.0,
                shadowColor: Colors.amberAccent,
                child: ListTile(
                  title: Text(_courses[index]),
                ),
              ),
            );
          }),
          separatorBuilder: (context, index) => const Divider(
                color: Colors.amber,
                thickness: 1.0,
              ),
          itemCount: _courses.length),
    );
  }
}
