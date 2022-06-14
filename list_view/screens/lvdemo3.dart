import 'package:flutter/material.dart';
import 'package:list_view_tut/screens/description.dart';
import 'package:list_view_tut/service/speaker_service.dart';

class LVDemo3 extends StatelessWidget {
  final speakers = SpeakerService().getSpeakers();
  LVDemo3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Annual conference'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: speakers.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 20.0,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(speakers[index].imageUrl),
                ),
                title: Text(speakers[index].speakerName),
                subtitle: Text(speakers[index].topic),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {
                  Navigator.pushNamed(context, SpeakerDetails.routename,
                      arguments: speakers);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
