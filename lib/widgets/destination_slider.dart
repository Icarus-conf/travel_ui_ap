import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/components/text_format.dart';
import 'package:travel_app/models/destination_model.dart';

class DestinationSlider extends StatelessWidget {
  const DestinationSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const PoppinsText(
                text: 'Top Destinations',
                fontS: 22,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
              ),
              TextButton(
                onPressed: () {},
                child: const PoppinsText(
                  text: 'See All',
                  color: Colors.blueGrey,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 300,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: destinations.length,
            itemBuilder: (context, index) {
              Destination destination = destinations[index];
              return Container(
                margin: const EdgeInsets.all(12),
                height: 210,
                child: Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Positioned(
                      bottom: 10,
                      child: Container(
                        height: 150,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              PoppinsText(
                                  text:
                                      '${destination.activities!.length} activities',
                                  fontS: 22),
                              PoppinsText(
                                text: destination.description!,
                                color: Colors.grey,
                                textOverflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                              height: 180,
                              width: 180,
                              image: AssetImage(destination.imageUrl!),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            left: 10,
                            bottom: 10,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                PoppinsText(
                                  text: destination.city!,
                                  fontS: 20,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.2,
                                  color: Colors.white,
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      FontAwesomeIcons.locationArrow,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    PoppinsText(
                                      text: destination.country!,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
