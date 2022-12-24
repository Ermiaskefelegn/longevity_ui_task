import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:longevity_ui_task/app/modules/common%20widgets/colors_constants.dart';
import 'package:longevity_ui_task/app/modules/common%20widgets/custome_text_input.dart';
import 'package:longevity_ui_task/app/modules/common%20widgets/text_types.dart';
import 'package:longevity_ui_task/app/modules/home/views/widgets/carousel_slider.dart';
import 'package:sizer/sizer.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TitleTextboldLarge(
                          title: "Summary", fontcolor: CustomColors.mainblack),
                      Row(
                        children: [
                          const TextMedium(
                              title: "Risks", fontcolor: CustomColors.mainblue),
                          SizedBox(width: 0.5.w),
                          Icon(
                            Icons.north_east,
                            color: CustomColors.mainblue,
                            size: 1.2.w,
                          ),
                          SizedBox(width: 4.h),
                        ],
                      )
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
                          title: "3 days ago",
                          fontcolor: CustomColors.fadedblack),
                    ],
                  ),
                  SizedBox(height: 2.w),
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      children: [
                        const TextMedium(
                            title: "Middle risk",
                            fontcolor: CustomColors.maingrey),
                        SizedBox(width: 5.w),
                        SizedBox(
                          width: 35.w,
                          height: 0.3.w,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: LinearProgressIndicator(
                              value: 0.5,
                              backgroundColor:
                                  CustomColors.mainblue.withOpacity(0.4),
                              valueColor: const AlwaysStoppedAnimation<Color>(
                                  CustomColors.mainblue),
                              // color: CustomColors.mainblue,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 2.w),
                  Container(
                    margin: EdgeInsets.only(left: 2.h),
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(1.5.h),
                          width: 12.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const TextMedium(
                                  title: "BMI",
                                  fontcolor: CustomColors.fadedblack),
                              SizedBox(height: 1.5.h),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const TitleTextLarge(
                                      title: "28.8",
                                      fontcolor: CustomColors.mainblack),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.north_east,
                                        color: CustomColors.mainred,
                                        size: 1.2.w,
                                      ),
                                      const TextMedium(
                                          title: "+ 0.3",
                                          fontcolor: CustomColors.mainred),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(1.5.h),
                          width: 12.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const TextMedium(
                                  title: "Weight Excess",
                                  fontcolor: CustomColors.fadedblack),
                              SizedBox(height: 1.5.h),
                              const TitleTextLarge(
                                  title: "Overweight",
                                  fontcolor: CustomColors.mainred),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(1.5.h),
                          width: 12.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const TextMedium(
                                  title: "Ideal weight",
                                  fontcolor: CustomColors.fadedblack),
                              SizedBox(height: 1.5.h),
                              const TitleTextLarge(
                                  title: "60.2",
                                  fontcolor: CustomColors.mainblack),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 2.w),
                  Container(
                    margin: EdgeInsets.only(left: 2.h),
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(1.5.h),
                          width: 12.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const TextMedium(
                                  title: "Biological Age",
                                  fontcolor: CustomColors.fadedblack),
                              SizedBox(height: 1.5.h),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const TitleTextLarge(
                                      title: "28.8",
                                      fontcolor: CustomColors.mainblack),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.south_east,
                                        color: CustomColors.maingreen,
                                        size: 1.2.w,
                                      ),
                                      const TextMedium(
                                          title: "- 2",
                                          fontcolor: CustomColors.maingreen),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(1.5.h),
                          width: 12.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const TextMedium(
                                  title: "Body type",
                                  fontcolor: CustomColors.fadedblack),
                              SizedBox(height: 1.5.h),
                              const TitleTextLarge(
                                  title: "Mesomorph",
                                  fontcolor: CustomColors.mainred),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(1.5.h),
                          width: 12.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const TextMedium(
                                  title: "Subcutaneous fat",
                                  fontcolor: CustomColors.fadedblack),
                              SizedBox(height: 1.5.h),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const TitleTextLarge(
                                      title: "15%",
                                      fontcolor: CustomColors.mainblack),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.north_east,
                                        color: CustomColors.mainyellow,
                                        size: 1.2.w,
                                      ),
                                      const TextMedium(
                                          title: "+ 2.0",
                                          fontcolor: CustomColors.mainred),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 4.w),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TitleTextboldLarge(
                          title: "Quick tune",
                          fontcolor: CustomColors.mainblack),
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
                      )
                    ],
                  ),
                  SizedBox(height: 4.h),
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const TextMedium(
                                    title: "Weight",
                                    fontcolor: CustomColors.fadedblack),
                                SizedBox(height: 1.h),
                                Container(
                                  width: 6.w,
                                  height: 2.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: const CustomTextInputBorder(
                                    suffictext: "KG",
                                    hintText: "Weight",
                                    value: "70.0",
                                  ),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const TextMedium(
                                    title: "Blood pressure",
                                    fontcolor: CustomColors.fadedblack),
                                SizedBox(height: 1.h),
                                Row(
                                  children: [
                                    Container(
                                      width: 5.w,
                                      height: 2.w,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white),
                                      child: const CustomTextInputBorder(
                                        suffictext: "",
                                        hintText: "systolic",
                                        value: "70",
                                      ),
                                    ),
                                    SizedBox(width: 0.5.h),
                                    const TextMedium(
                                        title: "/",
                                        fontcolor: CustomColors.mainblue),
                                    SizedBox(width: 0.5.h),
                                    Container(
                                      width: 5.w,
                                      height: 2.w,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white),
                                      child: const CustomTextInputBorder(
                                        suffictext: ".",
                                        hintText: "diastolic",
                                        value: "70",
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const TextMedium(
                                    title: "Heart rate",
                                    fontcolor: CustomColors.fadedblack),
                                SizedBox(height: 1.h),
                                Container(
                                  width: 6.w,
                                  height: 2.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: const CustomTextInputBorder(
                                    suffictext: "BPM",
                                    hintText: "Heart rate",
                                    value: "70.0",
                                  ),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const TextMedium(
                                    title: "Glucose",
                                    fontcolor: CustomColors.fadedblack),
                                SizedBox(height: 1.h),
                                Container(
                                  width: 6.w,
                                  height: 2.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: const CustomTextInputBorder(
                                    suffictext: "mmol/L",
                                    hintText: "Cholesterol",
                                    value: "4,0",
                                  ),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const TextMedium(
                                    title: "Cholesterol",
                                    fontcolor: CustomColors.fadedblack),
                                SizedBox(height: 1.h),
                                Container(
                                  width: 6.w,
                                  height: 2.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: const CustomTextInputBorder(
                                    suffictext: "mmol/L",
                                    hintText: "Cholesterol",
                                    value: "4,0.",
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.5.w),
                          child: Row(
                            children: [
                              const TextMedium2(
                                  title: "systolic",
                                  fontcolor: CustomColors.maingreyfade),
                              SizedBox(width: 4.h),
                              const TextMedium2(
                                  title: "diastolic",
                                  fontcolor: CustomColors.maingreyfade),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 4.w),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TitleTextboldLarge(
                          title: "Devices", fontcolor: CustomColors.mainblack),
                      Icon(
                        Icons.more_vert,
                        color: CustomColors.mainblack,
                        size: 2.5.w,
                      ),
                    ],
                  ),
                  SizedBox(height: 4.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.tv,
                                  color: CustomColors.mainblue,
                                  size: 1.5.w,
                                ),
                                SizedBox(width: 2.h),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    TextMedium(
                                        title: "Chrome / Windows 11 x64",
                                        fontcolor: CustomColors.fadedblack),
                                    TextMedium2(
                                        title: "•  This device",
                                        fontcolor: CustomColors.maingreen),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 2.h),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.phone_android,
                                  color: CustomColors.mainblue,
                                  size: 1.5.w,
                                ),
                                SizedBox(width: 2.h),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    TextMedium(
                                        title: "Samsung SM-A908N",
                                        fontcolor: CustomColors.fadedblack),
                                    TextMedium2(
                                        title: "Remove",
                                        fontcolor: CustomColors.mainred),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 2.h),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.tv,
                                  color: CustomColors.mainblue,
                                  size: 1.5.w,
                                ),
                                SizedBox(width: 2.h),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    TextMedium(
                                        title: "Chrome / Arch Linux x64",
                                        fontcolor: CustomColors.fadedblack),
                                    TextMedium2(
                                        title: "Remove",
                                        fontcolor: CustomColors.mainred),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 2.h),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.tv,
                                  color: CustomColors.mainblue,
                                  size: 1.5.w,
                                ),
                                SizedBox(width: 2.h),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    TextMedium(
                                        title: "Chrome / Arch Linux x64",
                                        fontcolor: CustomColors.fadedblack),
                                    TextMedium2(
                                        title: "•  Session Expired",
                                        fontcolor: CustomColors.mainred),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Column(
                        children: [boxwidget1(), boxwidget2()],
                      )
                    ],
                  ),
                  SizedBox(height: 6.h),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 4.h, vertical: 3.h),
                    margin: EdgeInsets.only(
                      left: 4.h,
                    ),
                    width: double.infinity,
                    height: 7.w,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0, 0),
                            color: CustomColors.mainblack.withOpacity(0.2),
                            spreadRadius: 4,
                            blurRadius: 4,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.inventory_2_outlined,
                          size: 10.sp,
                          color: CustomColors.mainblue,
                        ),
                        SizedBox(width: 2.h),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const TextMedium(
                                title: "Portable BioContainer",
                                fontcolor: CustomColors.mainblack),
                            SizedBox(
                              width: 50.h,
                              child: const TextMedium2(
                                  title:
                                      "Track more by sending bio material for analysis by specialists",
                                  fontcolor: CustomColors.mainblack),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 4.h,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 22.h,
                              decoration: const BoxDecoration(
                                  color: CustomColors.mainblue,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              padding: EdgeInsets.symmetric(
                                  vertical: 1.h, horizontal: 1.h),
                              child: const Center(
                                child: TextMedium(
                                    title: "Pre order",
                                    fontcolor: Colors.white),
                              ),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            const TextMedium2(
                                title: "Don’t show again",
                                fontcolor: CustomColors.mainblue),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    builddailystepgoal(),
                    SizedBox(
                      height: 10.5.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const TitleTextboldLarge(
                                title: "Suggestions",
                                fontcolor: CustomColors.mainblack),
                            Row(
                              children: [
                                const TextMedium(
                                    title: "View All",
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
                        SizedBox(
                          height: 2.h,
                        ),
                        Container(
                          width: double.infinity,
                          height: 8.h,
                          margin: EdgeInsets.only(right: 4.h),
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                  color: CustomColors.mainblue, width: 0.5)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  const TextMedium(
                                      title: "Priority",
                                      fontcolor: CustomColors.mainblue),
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
                                      title: "Normal",
                                      fontcolor: CustomColors.maingreen),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.crop_16_9_rounded,
                                      color: CustomColors.mainyellow),
                                  SizedBox(width: 1.h),
                                  const TextMedium2(
                                      title: "Medium",
                                      fontcolor: CustomColors.maingrey),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.change_history_rounded,
                                      color: CustomColors.mainred),
                                  SizedBox(width: 1.h),
                                  const TextMedium2(
                                      title: "High",
                                      fontcolor: CustomColors.mainred),
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
                                title:
                                    "Cholesterol level should be less than 5",
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
                                title:
                                    "Limit alcohol consumption to 1~2 glasses a day",
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
                                title:
                                    "Limit alcohol consumption to 1~2 glasses a day",
                                fontcolor: CustomColors.mainblack)
                          ],
                        ),
                        Divider(
                          height: 6.h,
                          thickness: 0.1,
                          endIndent: 2.h,
                        ),
                        Container(
                          width: 40.w,
                          height: 18.h,
                          margin: EdgeInsets.only(right: 4.h),
                          decoration: BoxDecoration(
                            color: CustomColors.mainblue,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: CustomColors.mainblue, width: 0.5),
                          ),
                          child: Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 5.h, vertical: 2.h),
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
                                            title:
                                                "Subscribe & get 1 month free",
                                            fontcolor: Colors.white),
                                      ),
                                      Container(
                                        width: 18.h,
                                        decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20))),
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
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }

  Container boxwidget1() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 3.h),
      margin: EdgeInsets.only(left: 4.h, top: 4.h),
      width: 40.h,
      height: 7.w,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          offset: const Offset(0, 0),
          color: CustomColors.mainblack.withOpacity(0.2),
          spreadRadius: 4,
          blurRadius: 4,
        ),
      ], borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.inventory_2_outlined,
            size: 10.sp,
            color: CustomColors.mainblue,
          ),
          SizedBox(width: 2.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextMedium(
                  title: "ScanWatch", fontcolor: CustomColors.mainblack),
              Row(
                children: [
                  Icon(
                    Icons.history,
                    color: CustomColors.fadedblack,
                    size: 1.2.w,
                  ),
                  SizedBox(width: 0.5.w),
                  const TextSmall(
                      title: "3 days ago", fontcolor: CustomColors.fadedblack),
                ],
              ),
            ],
          ),
          SizedBox(
            width: 6.h,
          ),
          Icon(
            Icons.bluetooth,
            size: 4.sp,
            color: CustomColors.mainblue,
          ),
        ],
      ),
    );
  }

  Container boxwidget2() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 3.h),
      margin: EdgeInsets.only(left: 4.h, top: 4.h),
      width: 40.h,
      height: 7.w,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          offset: const Offset(0, 0),
          color: CustomColors.mainblack.withOpacity(0.2),
          spreadRadius: 4,
          blurRadius: 4,
        ),
      ], borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/images/watch.png"),
          SizedBox(width: 1.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextMedium(
                  title: "BioContainer", fontcolor: CustomColors.mainblack),
              Row(
                children: [
                  Icon(
                    Icons.battery_4_bar_rounded,
                    color: CustomColors.mainblue,
                    size: 1.2.w,
                  ),
                  SizedBox(width: 0.5.w),
                  const TextSmall(
                      title: "87%", fontcolor: CustomColors.fadedblack),
                ],
              ),
            ],
          ),
          SizedBox(
            width: 3.h,
          ),
          Icon(
            Icons.bluetooth,
            size: 4.sp,
            color: CustomColors.mainblue,
          ),
        ],
      ),
    );
  }

  Widget builddailystepgoal() {
    ///LMIS TIPS CAROUSEL
    return CarouselSlider(
      height: 16.h * 2.1,
      scrollDuration: const Duration(seconds: 3),
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 4.h),
          margin: EdgeInsets.symmetric(horizontal: 4.h),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              offset: const Offset(0, 3),
              blurRadius: 6,
              spreadRadius: 2,
              color: Colors.black.withOpacity(0.0),
            ),
          ], borderRadius: BorderRadius.circular(20), color: Colors.white),
          width: double.infinity,
          height: 20.h,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TextMedium(
                      title: "Daily step goal",
                      fontcolor: CustomColors.mainblack),
                  Row(
                    children: const [
                      Icon(Icons.sports_football_outlined),
                      TextMedium(
                          title: " +25", fontcolor: CustomColors.mainblue),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 4.h,
              ),
              Row(
                children: [
                  CircularProgressIndicator(
                    value: 0.75,
                    color: CustomColors.mainblue,
                    backgroundColor: CustomColors.mainblue.withOpacity(0.2),
                  ),
                  SizedBox(width: 2.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextMedium(
                          title: "Almost there !",
                          fontcolor: CustomColors.mainblue),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          TextMedium(
                              title: "7.5k/",
                              fontcolor: CustomColors.mainblack),
                          TextMedium2(
                              title: "10k", fontcolor: CustomColors.mainblack),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 4.h),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              offset: const Offset(0, 3),
              blurRadius: 6,
              spreadRadius: 2,
              color: Colors.black.withOpacity(0.0),
            ),
          ], borderRadius: BorderRadius.circular(20), color: Colors.white),
          width: double.infinity,
          height: 20.h,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TextMedium(
                      title: "My Balance", fontcolor: CustomColors.mainblack),
                  Row(
                    children: [
                      Row(
                        children: [
                          const TextMedium(
                              title: "shop", fontcolor: CustomColors.mainblue),
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
                              title: "Earn more",
                              fontcolor: CustomColors.mainblue),
                          SizedBox(width: 0.5.w),
                          Icon(
                            Icons.north_east,
                            color: CustomColors.mainblue,
                            size: 1.2.w,
                          ),
                          SizedBox(width: 4.h),
                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 4.h,
              ),
              SizedBox(width: 2.w),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const TitleTextboldLarge(
                      title: "3.", fontcolor: CustomColors.mainblue),
                  const TitleTextboldLarge(
                      title: "578", fontcolor: CustomColors.mainblack),
                  SizedBox(width: 1.h),
                  const TextMedium(
                      title: "\$LONG", fontcolor: CustomColors.mainblack),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
