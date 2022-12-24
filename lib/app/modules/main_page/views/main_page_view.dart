import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:longevity_ui_task/app/modules/home/views/home_view.dart';
import 'package:longevity_ui_task/app/modules/risks/views/risks_view.dart';
import 'package:longevity_ui_task/app/modules/suggestions/views/suggestions_view.dart';
import 'package:sizer/sizer.dart';
import '../controllers/main_page_controller.dart';

class MainPageView extends GetView<MainPageController> {
  const MainPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9FBFF),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 2.w,
                ),
                Image.asset(
                  "assets/images/logo.png",
                  height: 3.5.w,
                ),
                SizedBox(
                  width: 1.w,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffF9FBFF),
                        borderRadius: BorderRadius.circular(6)),
                    padding: EdgeInsets.only(top: 1.w),
                    margin: EdgeInsets.symmetric(vertical: 1.w),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: TabBar(
                        isScrollable: true,
                        unselectedLabelStyle: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Colors.grey),
                        labelStyle: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(
                                color: const Color(0xff3683FC),
                                fontWeight: FontWeight.w600),
                        labelColor: const Color(0xff3683FC),
                        unselectedLabelColor: Colors.black,
                        indicatorColor: const Color(0xff3683FC),
                        indicatorWeight: 0.00000001,
                        // indicatorPadding:
                        //     EdgeInsets.only(left: 2.w, right: 2.w),
                        tabs: [
                          Row(
                            children: [
                              const Icon(Icons.home),
                              SizedBox(
                                width: 1.w,
                              ),
                              const Tab(
                                text: "Home",
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.bar_chart),
                              SizedBox(
                                width: 1.w,
                              ),
                              const Tab(
                                text: "Risks",
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.medical_services),
                              SizedBox(
                                width: 1.w,
                              ),
                              const Tab(
                                text: "Suggestions",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 1.w,
                ),
                Row(
                  children: [
                    const Text("Jane"),
                    SizedBox(
                      width: 1.w,
                    ),
                    CircleAvatar(
                      child: Image.asset("assets/images/jane.png"),
                    ),
                  ],
                ),
                SizedBox(
                  width: 1.w,
                ),
              ],
            ),
            SizedBox(
              width: 100.w,
              height: 80.h,
              child: TabBarView(
                children: [HomeView(), RisksView(), SuggestionsView()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
