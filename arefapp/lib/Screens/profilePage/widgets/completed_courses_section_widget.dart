import 'package:flutter/material.dart';
import 'package:arefapp/utils/app_export.dart';

// ignore: must_be_immutable
class CompletedCoursesSectionWidget extends StatelessWidget {
  const CompletedCoursesSectionWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 36.h,
        vertical: 43.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      width: 153.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          SizedBox(
            width: 200.h,
            child: Text(
              "تراكيب\n محددة",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleLarge!.copyWith(
                height: 1.34,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
