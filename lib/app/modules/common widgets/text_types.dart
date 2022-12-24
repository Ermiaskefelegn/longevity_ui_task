import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TitleTextboldLarge extends StatelessWidget {
  const TitleTextboldLarge(
      {super.key, required this.title, required this.fontcolor});
  final String title;
  final Color fontcolor;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontSize: 6.sp, fontWeight: FontWeight.w700, color: fontcolor),
    );
  }
}

class TitleTextLarge extends StatelessWidget {
  const TitleTextLarge(
      {super.key, required this.title, required this.fontcolor});
  final String title;
  final Color fontcolor;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontSize: 5.sp, fontWeight: FontWeight.w400, color: fontcolor),
    );
  }
}

class TextMedium extends StatelessWidget {
  const TextMedium({super.key, required this.title, required this.fontcolor});
  final String title;
  final Color fontcolor;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontSize: 4.sp, fontWeight: FontWeight.w400, color: fontcolor),
    );
  }
}

class TextMedium2 extends StatelessWidget {
  const TextMedium2({super.key, required this.title, required this.fontcolor});
  final String title;
  final Color fontcolor;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontSize: 3.sp, fontWeight: FontWeight.w400, color: fontcolor),
    );
  }
}

class TextSmall extends StatelessWidget {
  const TextSmall({super.key, required this.title, required this.fontcolor});
  final String title;
  final Color fontcolor;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontSize: 2.sp, fontWeight: FontWeight.w400, color: fontcolor),
    );
  }
}

class TextExtraSmall extends StatelessWidget {
  const TextExtraSmall(
      {super.key, required this.title, required this.fontcolor});
  final String title;
  final Color fontcolor;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontSize: 1.sp, fontWeight: FontWeight.w400, color: fontcolor),
    );
  }
}
