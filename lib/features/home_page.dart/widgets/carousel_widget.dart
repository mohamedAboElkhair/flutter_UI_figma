import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_figma/features/home_page.dart/widgets/card_item_widget.dart';
import 'package:ui_figma/widgets/space_widgets.dart.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({super.key});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  double currentIndexPage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 263.h,
            padEnds: false,
            viewportFraction: 0.7,
            enlargeCenterPage: true,
            enlargeFactor: 0.2,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndexPage = index.toDouble();
              });
            },
          ),
          items: [
            CardItemWidget(titleCard: "First Card"),
            CardItemWidget(titleCard: "Scond Card"),
          ],
        ),
        HightSpaceWidgets(height: 16),
        DotsIndicator(
          dotsCount: 2,
          position: currentIndexPage,
          decorator: DotsDecorator(
            spacing: EdgeInsets.symmetric(horizontal: 4.w),
            color: Color(0xffE3E9ED),
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      ],
    );
  }
}
