import 'package:flutter/material.dart';
import 'package:list_view_tut/model/speaker.dart';

class SpeakerDetails extends StatelessWidget {
  static const routename = '/speakerDetails';

  const SpeakerDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Speaker speaker =
        ModalRoute.of(context)!.settings.arguments as Speaker;
    return Scaffold(
      appBar: AppBar(
        title: Text(speaker.speakerName + 'details'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(speaker.shortDescription),
          ),
        ],
      ),
    );
  }
}
