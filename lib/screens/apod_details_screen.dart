import 'package:flutter/material.dart';
import 'package:new_app_online_workshop/models/apod_model.dart';
import 'package:new_app_online_workshop/widgets/apod_widget_enhanced.dart';

class ApodDetailsScreen extends StatelessWidget {
  /// 2- call item inside the constructor

  const ApodDetailsScreen({super.key, required this.item});

  /// 1- define attribute of  ApodDetailsScreen
  /// Each time we call ApodDetailsScreen we pass an item :> required
  final ApodModel item;

  /// 3- pass item to the reusable widget: ApodWidgetEnhanced

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Details Screen")),
      body: SafeArea(
        child: Column(
          spacing: 10,
          children: [
            Text(item.title),
            Image.network(item.url!, fit: BoxFit.cover),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(item.explanation),
            ),

            // TextButton(
            //   style: ButtonStyle(
            //     foregroundColor: WidgetStateProperty.all<Color>(
            //       Colors.blue,
            //     ),
            //   ),
            //   onPressed: () {
            //     print("hello");
            //   },
            //   child: Text('TextButton'),
            // ),
          ],
        ),
      ),
    );
  }
}
