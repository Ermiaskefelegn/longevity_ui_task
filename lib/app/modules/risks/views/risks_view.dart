import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:longevity_ui_task/app/modules/common%20widgets/colors_constants.dart';
import 'package:longevity_ui_task/app/modules/common%20widgets/text_types.dart';
import 'package:sizer/sizer.dart';

import '../controllers/risks_controller.dart';

class RisksView extends GetView<RisksController> {
  final ScrollController _firstController = ScrollController();
  RisksView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 4.h, vertical: 2.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TitleTextboldLarge(
                      title: "Biomarker analysis",
                      fontcolor: CustomColors.mainblack),
                  Row(
                    children: [
                      Row(
                        children: [
                          const TextMedium(
                              title: "My biomarkers",
                              fontcolor: CustomColors.mainblue),
                          SizedBox(width: 0.5.w),
                          Icon(
                            Icons.north_east,
                            color: CustomColors.mainblue,
                            size: 1.2.w,
                          ),
                          SizedBox(width: 4.h),
                        ],
                      ),
                      Row(
                        children: [
                          const TextMedium(
                              title: "Suggestions",
                              fontcolor: CustomColors.mainblue),
                          SizedBox(width: 0.5.w),
                          Icon(
                            Icons.north_east,
                            color: CustomColors.mainblue,
                            size: 1.2.w,
                          ),
                          SizedBox(width: 4.h),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.history,
                    color: CustomColors.fadedblack,
                    size: 1.2.w,
                  ),
                  SizedBox(width: 0.5.w),
                  const TextSmall(
                      title:
                          "3 days ago | This is not a Medical Report. Consult a Doctor",
                      fontcolor: CustomColors.fadedblack),
                ],
              ),
              SizedBox(
                height: 4.h,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 2.w,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const TextMedium(
                                title: "Risk level is normal",
                                fontcolor: CustomColors.mainblack),
                            const TextMedium(
                                title: "50%", fontcolor: CustomColors.mainblue),
                            SizedBox(width: 1.h),
                          ],
                        ),
                        Divider(
                          height: 6.h,
                          thickness: 0.8,
                          endIndent: 10.w,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const TextMedium(
                                title: "BMI (Bio Mass Index)",
                                fontcolor: CustomColors.mainblack),
                            const TextMedium(
                                title: "28.8", fontcolor: CustomColors.mainred),
                            SizedBox(width: 1.h),
                          ],
                        ),
                        Divider(
                          height: 6.h,
                          thickness: 0.8,
                          endIndent: 10.w,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const TextMedium(
                                title: "BMI (Bio Mass Index)",
                                fontcolor: CustomColors.mainblack),
                            const TextMedium(
                                title: "Overweight",
                                fontcolor: CustomColors.mainred),
                            SizedBox(width: 1.h),
                          ],
                        ),
                        Divider(
                          height: 6.h,
                          thickness: 0.8,
                          endIndent: 10.w,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                TextMedium(
                                    title: "Ideal Weight",
                                    fontcolor: CustomColors.mainblack),
                                TextMedium(
                                    title: "-20.1Kg remaining to match!",
                                    fontcolor: CustomColors.mainblack),
                              ],
                            ),
                            const TextMedium(
                                title: "60.2",
                                fontcolor: CustomColors.maingreen),
                            SizedBox(width: 1.h),
                          ],
                        ),
                        Divider(
                          height: 6.h,
                          thickness: 0.8,
                          endIndent: 10.w,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 20.w,
                              child: const TextMedium(
                                  title:
                                      "Probability of being affected by severe diseases in next 10 years",
                                  fontcolor: CustomColors.mainblack),
                            ),
                            const TextMedium(
                                title: "60%",
                                fontcolor: CustomColors.mainyellow),
                            SizedBox(width: 1.h),
                          ],
                        ),
                        Divider(
                          height: 6.h,
                          thickness: 0.8,
                          endIndent: 10.w,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 20.w,
                              child: const TextMedium(
                                  title:
                                      "Changes of being affected by immunity related diseases in the next 2 years",
                                  fontcolor: CustomColors.mainblack),
                            ),
                            const TextMedium(
                                title: "20%",
                                fontcolor: CustomColors.maingreen),
                            SizedBox(width: 1.h),
                          ],
                        ),
                        Divider(
                          height: 6.h,
                          thickness: 0.8,
                          endIndent: 10.w,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 20.w,
                              child: const TextMedium(
                                  title:
                                      "Your cancer risks are the same like other people with normal weight",
                                  fontcolor: CustomColors.mainblack),
                            ),
                            const TextMedium(
                                title: "-", fontcolor: CustomColors.maingreen),
                            SizedBox(width: 1.h),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(flex: 3, child: rightwidget())
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container rightwidget() {
    return Container(
      height: 70.h,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 6.h),
      margin: EdgeInsets.symmetric(
        horizontal: 2.w,
      ),
      decoration: BoxDecoration(
        color: CustomColors.mainblue.withOpacity(0.2),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: CustomColors.mainblue, width: 0.5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/Arrow.png"),
              SizedBox(
                width: 6.h,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 2.h),
                width: 20.h,
                child: const Text(
                  "tap on an item to see details",
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8.h,
          ),
          Container(
            width: 40.w,
            height: 18.h,
            margin: EdgeInsets.only(right: 4.h),
            decoration: BoxDecoration(
              color: CustomColors.mainblue,
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: CustomColors.mainblue, width: 0.5),
            ),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 5.h, vertical: 2.h),
                      child: const TextMedium(
                          title:
                              "Looking for more personal recomendations and risk reports?",
                          fontcolor: Colors.white),
                    ),
                    SizedBox(
                      width: 2.h,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 5.h,
                          ),
                          child: const TextMedium(
                              title: "Subscribe & get 1 month free",
                              fontcolor: Colors.white),
                        ),
                        Container(
                          width: 18.h,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          padding: EdgeInsets.symmetric(
                              vertical: 1.h, horizontal: 1.h),
                          margin: EdgeInsets.symmetric(
                            horizontal: 5.h,
                          ),
                          child: const Center(
                            child: TextMedium(
                                title: "Subscribe",
                                fontcolor: CustomColors.mainblue),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
