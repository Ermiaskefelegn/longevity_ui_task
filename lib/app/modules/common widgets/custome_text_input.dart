import 'package:flutter/material.dart';
import 'package:longevity_ui_task/app/modules/common%20widgets/colors_constants.dart';
import 'package:sizer/sizer.dart';

class CustomTextInputBorder extends StatelessWidget {
  const CustomTextInputBorder({
    Key? key,
    required this.hintText,
    required this.value,
    required this.suffictext,
  }) : super(key: key);

  ///input hint text
  final String hintText, value, suffictext;

  ///input hint text

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: value,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(6))),
        hintText: hintText,
        labelText: hintText,
        hintStyle: Theme.of(context)
            .textTheme
            .bodySmall!
            .copyWith(color: CustomColors.mainblack),
        labelStyle: Theme.of(context)
            .textTheme
            .bodySmall!
            .copyWith(color: CustomColors.mainblue),
        suffixIcon: Padding(
          padding: EdgeInsets.only(top: 1.5.h, left: 2.h),
          child: Text(
            suffictext,
            style: TextStyle(color: CustomColors.maingreyfade, fontSize: 2.sp),
          ),
        ),
        alignLabelWithHint: true,
        filled: true,
        fillColor: CustomColors.mainblue.withOpacity(0.2),
        contentPadding: EdgeInsets.symmetric(horizontal: 0.8.h, vertical: 0.h),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(6.0),
          ),
          borderSide: BorderSide(
            color: CustomColors.mainblue,
          ),
        ),
      ),
      style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: CustomColors.mainblack,
            decoration: TextDecoration.none,
            fontWeight: FontWeight.w500,
            decorationThickness: 0.0,
          ),
    );
  }
}
