import 'package:flutter/material.dart';
import 'package:new_app_online_workshop/data/apod_data.dart';
import 'package:new_app_online_workshop/models/apod_model.dart';
import 'package:new_app_online_workshop/screens/apod_details_screen.dart';
import 'package:new_app_online_workshop/services/apod_services.dart';
import 'package:new_app_online_workshop/widgets/apod_widget_enhanced.dart';

class ApodScreenEnhanced extends StatefulWidget {
  const ApodScreenEnhanced({super.key});

  @override
  State<ApodScreenEnhanced> createState() => _ApodScreenEnhancedState();
}

class _ApodScreenEnhancedState extends State<ApodScreenEnhanced> {
  late Future<List<ApodModel>> listApods;

  @override
  void initState() {
    super.initState();

    // fetch data from apod services
    listApods = ApodServices().fetchApods();
    print("listApods: $listApods");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("APOD Screen")),
      body: FutureBuilder(
        future: listApods,
        builder: (context, snapshot) {
          // List<Widget>
          
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (BuildContext context, int index) {
                final apod = snapshot.data![index];

                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ApodDetailsScreen(item: apod),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: ApodWidgetEnhanced(apod: apod),
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Column(
              children: [
                const Icon(Icons.error_outline, color: Colors.red, size: 60),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text('Error: ${snapshot.error}'),
                ),
              ],
            );
          } else {
            return Column(
              children: [
                SizedBox(
                  width: 60,
                  height: 60,
                  child: CircularProgressIndicator(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text('Awaiting result...'),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
