import 'package:flutter/material.dart';
import 'package:new_app_online_workshop/data/apod_data.dart';
import 'package:new_app_online_workshop/widgets/apod_widget.dart';

class ApodScreen extends StatelessWidget {
  const ApodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final apodData = data;

    return Scaffold(
      appBar: AppBar(title: Text("APOD Screen")),
      body: ApodWidget(apodData: apodData),
    );
  }
}
