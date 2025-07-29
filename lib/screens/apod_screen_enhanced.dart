import 'package:flutter/material.dart';
import 'package:new_app_online_workshop/data/apod_data.dart';
import 'package:new_app_online_workshop/widgets/apod_widget_enhanced.dart';

class ApodScreenEnhanced extends StatelessWidget {
  const ApodScreenEnhanced({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("APOD Screen")),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          final apod = data[index];
          return Padding(
            padding: EdgeInsets.all(10),
            child: ApodWidgetEnhanced(apod: apod),
          );
        },
      ),
    );
  }
}
