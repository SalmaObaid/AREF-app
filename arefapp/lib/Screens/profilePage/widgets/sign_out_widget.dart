import 'package:flutter/material.dart';
import 'package:arefapp/utils/app_export.dart';

// ignore: must_be_immutable
class SignOutWidget extends StatelessWidget {
  const SignOutWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
          color: const Color.fromARGB(255, 246, 246, 248),
          border:
              Border.all(color: const Color.fromARGB(255, 236, 236, 236), width: 2.h),
          boxShadow: [
            const BoxShadow(
              color: Color.fromARGB(255, 239, 239, 241),
              blurRadius: 4,
              spreadRadius: 1,
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 3.v),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 8.v,
                    bottom: 6.v,
                  ),
                  child: Text(
                    " تسجيل خروج ",
                    style: CustomTextStyles.titleLargeBlack90023,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
