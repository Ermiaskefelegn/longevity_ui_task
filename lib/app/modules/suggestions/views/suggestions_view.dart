import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:longevity_ui_task/app/modules/common%20widgets/colors_constants.dart';
import 'package:longevity_ui_task/app/modules/common%20widgets/text_types.dart';
import 'package:sizer/sizer.dart';

import '../controllers/suggestions_controller.dart';

class SuggestionsView extends GetView<SuggestionsController> {
  const SuggestionsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 4.h, vertical: 2.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              headertitle(),
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
                  leftwidget(),
                  Expanded(flex: 3, child: rightwidget())
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Expanded leftwidget() {
    return Expanded(
      flex: 3,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 8.h,
            margin: EdgeInsets.only(right: 4.h),
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: CustomColors.mainblue, width: 0.5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    const TextMedium(
                        title: "Priority", fontcolor: CustomColors.mainblue),
                    SizedBox(
                      width: 2.h,
                    ),
                    const Icon(Icons.filter_list)
                  ],
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 1.h,
                      backgroundColor: CustomColors.maingreen,
                    ),
                    SizedBox(width: 1.h),
                    const TextMedium2(
                        title: "Normal", fontcolor: CustomColors.maingreen),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.crop_16_9_rounded,
                        color: CustomColors.mainyellow),
                    SizedBox(width: 1.h),
                    const TextMedium2(
                        title: "Medium", fontcolor: CustomColors.maingrey),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.change_history_rounded,
                        color: CustomColors.mainred),
                    SizedBox(width: 1.h),
                    const TextMedium2(
                        title: "High", fontcolor: CustomColors.mainred),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 2.w,
          ),
          Row(
            children: [
              const Icon(Icons.change_history_rounded,
                  color: CustomColors.mainred),
              SizedBox(width: 1.h),
              const TextMedium(
                  title: "Walk more than 8k steps per day",
                  fontcolor: CustomColors.mainblack)
            ],
          ),
          Divider(
            height: 6.h,
            thickness: 0.8,
            endIndent: 4.h,
          ),
          Row(
            children: [
              const Icon(Icons.change_history_rounded,
                  color: CustomColors.mainred),
              SizedBox(width: 1.h),
              const TextMedium(
                  title: "Lower your cholesterol",
                  fontcolor: CustomColors.mainblack)
            ],
          ),
          SizedBox(height: 2.h),
          Row(
            children: [
              SizedBox(width: 5.h),
              const TextMedium2(
                  title: "Cholesterol level should be less than 5",
                  fontcolor: CustomColors.mainblack)
            ],
          ),
          SizedBox(height: 2.h),
          Row(
            children: [
              SizedBox(width: 5.h),
              const TextMedium2(
                  title: "Current: 5,7 mmol/L",
                  fontcolor: CustomColors.mainblack)
            ],
          ),
          Divider(
            height: 6.h,
            thickness: 0.8,
            endIndent: 4.h,
          ),
          Row(
            children: [
              const Icon(Icons.crop_16_9_outlined,
                  color: CustomColors.mainyellow),
              SizedBox(width: 1.h),
              const TextMedium(
                  title: "Limit alcohol consumption to 1~2 glasses a day",
                  fontcolor: CustomColors.mainblack)
            ],
          ),
          Divider(
            height: 6.h,
            thickness: 0.8,
            endIndent: 4.h,
          ),
          Row(
            children: [
              const Icon(Icons.crop_16_9_outlined,
                  color: CustomColors.mainyellow),
              SizedBox(width: 1.h),
              const TextMedium(
                  title: "Eat 1-2 eggs a day, cooked anyway except fried",
                  fontcolor: CustomColors.mainblack)
            ],
          ),
          Divider(
            height: 6.h,
            thickness: 0.8,
            endIndent: 4.h,
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 1.h,
                backgroundColor: CustomColors.maingreen,
              ),
              SizedBox(width: 2.h),
              const TextMedium(
                  title: "Limit alcohol consumption to 1~2 glasses a day",
                  fontcolor: CustomColors.mainblack)
            ],
          ),
          Divider(
            height: 6.h,
            thickness: 0.1,
            endIndent: 2.h,
          ),
        ],
      ),
    );
  }

  Row headertitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const TitleTextboldLarge(
            title: "Suggestions", fontcolor: CustomColors.mainblack),
        Row(
          children: [
            const TextMedium(
                title: "My biomarkers", fontcolor: CustomColors.mainblue),
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
