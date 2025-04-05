import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_app/core/constants/images.dart';

class ScreenshotsSlider extends StatefulWidget {
  const ScreenshotsSlider({super.key});

  @override
  State<ScreenshotsSlider> createState() => _ScreenshotsSliderState();
}

class _ScreenshotsSliderState extends State<ScreenshotsSlider> {
  final List<String> imgList = [
    AppImages.screenshotOne,
    AppImages.screenshotTwo,
    AppImages.screenshotThree,
    AppImages.screenshotFour,
    AppImages.screenshotFive,
    AppImages.screenshotSix,
    AppImages.screenshotSeven,
    AppImages.screenshotEight,
  ];

  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 500.h,
            autoPlay: true,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(
                () {
                  current = index;
                },
              );
            },
          ),
          items: imgList
              .map(
                (item) => Center(
                  child: Image.asset(
                    item,
                    fit: BoxFit.cover,
                  ),
                ),
              )
              .toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.map(
            (url) {
              int index = imgList.indexOf(url);
              return Container(
                width: 8.0,
                height: 8.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: current == index
                      ? const Color.fromRGBO(0, 0, 0, 0.9)
                      : const Color.fromRGBO(0, 0, 0, 0.4),
                ),
              );
            },
          ).toList(),
        ),
      ],
    );
  }
}
