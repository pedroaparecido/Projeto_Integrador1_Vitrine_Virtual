import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../core/fakes/images.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 400,
        autoPlay: true,
      ),
      items: fakeImagesBanner
          .map((item) => Center(
                child: Image.network(
                  item,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                ),
              ))
          .toList(),
    );
  }
}
