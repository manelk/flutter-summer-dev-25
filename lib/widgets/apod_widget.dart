import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:new_app_online_workshop/models/apod_model.dart';

class ApodWidget extends StatelessWidget {
  const ApodWidget({super.key, required this.apodData});

  final List<ApodModel> apodData;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: apodData.length,
      itemBuilder: (BuildContext context, int index) {
        return Center(
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
              child: Column(
                spacing: 20,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(apodData[index].title),
                  Text(DateFormat.yMMMMEEEEd().format(apodData[index].date!)),
                  AspectRatio(
                    aspectRatio: 2.0,
                    child: Image.network(
                      apodData[index].url,
                      errorBuilder:
                          (
                            BuildContext context,
                            Object exception,
                            StackTrace? stackTrace,
                          ) {
                            return Image.asset(
                              height: MediaQuery.of(context).size.height * 0.5,
                              width: MediaQuery.of(context).size.width * 0.7,
                              "assets/images/fail_image.jpg",
                            );
                          },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
