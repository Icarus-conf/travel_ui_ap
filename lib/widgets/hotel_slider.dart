import 'package:flutter/material.dart';
import 'package:travel_app/components/text_format.dart';
import 'package:travel_app/models/hotel_model.dart';

class HotelSlider extends StatelessWidget {
  const HotelSlider({super.key});

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
                text: 'Exclusive Hotels',
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
              itemCount: hotels.length,
              itemBuilder: (context, index) {
                Hotel hotel = hotels[index];
                return Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0, 2),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          child: Image(
                            height: 150,
                            width: 180,
                            image: AssetImage(hotel.imageUrl!),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(12),
                        width: 180,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0, 2),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            PoppinsText(
                              text: hotel.name!,
                              fontS: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2,
                              color: Colors.blueGrey,
                            ),
                            PoppinsText(
                              text: hotel.address!,
                              fontS: 12,
                              color: Colors.grey,
                            ),
                            PoppinsText(
                              text: '\$${hotel.price!}/night',
                              fontWeight: FontWeight.w600,
                              color: Colors.blueGrey,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}
