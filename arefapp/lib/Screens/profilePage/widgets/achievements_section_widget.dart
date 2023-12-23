import 'package:flutter/material.dart';
import 'package:arefapp/utils/app_export.dart';

// ignore: must_be_immutable
class AchievementsSectionWidget extends StatelessWidget {
  const AchievementsSectionWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 11.h),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      width: 153.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgSportsMedal,
            height: 80.adaptSize,
            width: 80.adaptSize,
          ),
          SizedBox(height: 10.v),
          Text(
            "وسام الإنجاز",
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 30.v),
        ],
      ),
    );
  }
}
