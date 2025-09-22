import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_figma/features/home_page.dart/widgets/card_item_widget.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({super.key});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 263.h,
        padEnds: false,
        viewportFraction: 0.7,
        enlargeCenterPage: true,
        enlargeFactor: 0.2,
      ),
      items: [
        CardItemWidget(titleCard: "First Card"),
        CardItemWidget(titleCard: "Scond Card"),
      ],
    );
  }
}
