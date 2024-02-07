import 'package:flutter/material.dart';
import 'package:travel_app/components/text_format.dart';
import 'package:travel_app/models/destination_model.dart';

class DestinationDetails extends StatelessWidget {
  static const String routeName = 'DestinationDetails';
  const DestinationDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var index = ModalRoute.of(context)!.settings.arguments as int;
    Destination destination = destinations[index];

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(destination.imageUrl!),
              Positioned(
                top: 40,
                left: 10,
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PoppinsText(
                  text: destination.city!,
                  fontS: 20,
                  fontWeight: FontWeight.w600,
                ),
                const Divider(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
