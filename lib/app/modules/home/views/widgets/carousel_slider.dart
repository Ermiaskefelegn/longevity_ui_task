// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:longevity_ui_task/app/modules/common%20widgets/colors_constants.dart';
import 'package:sizer/sizer.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselSlider extends StatefulWidget {
  const CarouselSlider(
      {Key? key,
      required this.height,
      required this.children,
      required this.scrollDuration})
      : super(key: key);

  final double height;
  final List<Widget> children;
  final Duration scrollDuration;

  @override
  State<CarouselSlider> createState() => _CarouselSliderState();
}

class _CarouselSliderState extends State<CarouselSlider> {
  ///NOTIFIER FOR DOTED INDICATOR
  late ValueNotifier<int> pageNotifier;

  ///CONTROLLER FOR PAGE VIEW
  late PageController controller;

  ///TIMER FOR CAROUSEL
  late Timer timer;

  ///PAGER CURRENT PAGE
  int currentPage = 0;

  @override
  void initState() {
    ///PAGE VIEW CONTROLLER INIT
    controller = PageController(
      initialPage: 0,
      viewportFraction: 1.0,
    );

    ///INDICATOR CONTROLLER INIT
    pageNotifier = ValueNotifier<int>(0);

    ///CAROUSEL TIMER INIT
    timer = Timer.periodic(const Duration(seconds: 6), (Timer timer) {
      if (currentPage < 2) {
        currentPage++;
      } else {
        currentPage = 0;
      }

      controller.animateToPage(
        currentPage,
        duration: widget.scrollDuration,
        curve: Curves.easeIn,
      );
    });
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6.w),
      height: widget.height,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: 0.5.h,
          ),
          Expanded(
            child: PageView(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  pageNotifier.value = index;
                  currentPage = index;
                });
              },
              children: widget.children,
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SmoothPageIndicator(
                controller: controller, // PageController
                count: widget.children.length,
                effect: ScrollingDotsEffect(
                  dotHeight: 2.h,
                  dotWidth: 2.h,
                  activeDotColor: CustomColors.mainblue,
                  dotColor: Colors.black12,
                ),
                onDotClicked: (index) {
                  controller.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                },
              ),
              SizedBox(
                width: 1.h,
              ),
              CircleAvatar(
                  backgroundColor: CustomColors.mainblue,
                  radius: 2.h,
                  child: const Icon(Icons.chevron_right_outlined,
                      color: Colors.white))
            ],
          ),
          SizedBox(
            height: 2.h * 0.8,
          ),
        ],
      ),
    );
  }
}
