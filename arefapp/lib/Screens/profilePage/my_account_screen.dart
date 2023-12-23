import '../profilePage/widgets/completed_courses_section_widget.dart';
import 'widgets/achievements_section_widget.dart';
import 'widgets/sign_out_widget.dart';
import 'package:flutter/material.dart';
import 'package:arefapp/utils/app_export.dart';
import 'package:arefapp/theme/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class MyAccountScreen extends StatelessWidget {
  MyAccountScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController editController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(height: 1.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            print("return to home page icon clicked!");
                          },
                          child: CustomImageView(
                            imagePath: ImageConstant.imgArrowRight,
                            height: 30.v,
                            width: 15.h,
                            margin: EdgeInsets.only(
                                left: 15.h, top: 10.h, right: 15.h),
                          ),
                        ),
                        SizedBox(height: 5.v),
                        SizedBox(
                          height: 1300.v,
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              _buildWelcomeSection(context),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: SizedBox(
                                  height: 590.v,
                                  width: double.maxFinite,
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      _buildUserInfo(context),
                                      _buildBadgeList(context),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginForm(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 6.h),
              child: Text(
                ": المعلومات الشخصية ",
                style: CustomTextStyles.titleLargeBlack90023,
              ),
            ),
          ),
          SizedBox(height: 18.v),
          CustomTextFormField(
            controller: editController,
            hintText: "سلمى عبيد",
            prefix: Container(
              margin: EdgeInsets.fromLTRB(13.h, 17.v, 30.h, 13.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgEdit,
                height: 22.adaptSize,
                width: 22.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 57.v,
            ),
          ),
          SizedBox(height: 31.v),
          CustomTextFormField(
            controller: emailController,
            hintText: "salmaobaid@gmai.com",
            textInputType: TextInputType.emailAddress,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(13.h, 17.v, 30.h, 13.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgEdit,
                height: 22.adaptSize,
                width: 22.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 57.v,
            ),
          ),
          SizedBox(height: 31.v),
          CustomTextFormField(
            controller: passwordController,
            hintText: " ***********",
            hintStyle: CustomTextStyles.headlineMediumBlack,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(13.h, 17.v, 30.h, 17.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgEdit,
                height: 22.adaptSize,
                width: 22.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 57.v,
            ),
            obscureText: true,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWelcomeSection(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 9.h,
          vertical: 60.v,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgEllipse,
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse16,
              height: 150.adaptSize,
              width: 150.adaptSize,
              alignment: Alignment.topCenter,
              radius: BorderRadius.circular(
                57.h,
              ),
            ),
            SizedBox(height: 4.v),
            Text(
              "سلمى عبيد",
              style: theme.textTheme.headlineLarge,
            ),
            SizedBox(height: 52.v),
            _buildLoginForm(context),
            SizedBox(height: 47.v),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 6.h),
                child: Text(
                  ": الإنجازات الأخيرة ",
                  style: CustomTextStyles.titleLargeBlack90023,
                ),
              ),
            ),
            SizedBox(height: 157.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMessageList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              ": المواد المكتملة ",
              style: CustomTextStyles.titleLargeBlack90023,
            ),
          ),
          SizedBox(height: 22.v),
          SizedBox(
            height: 163.v,
            child: ListView.separated(
              padding: EdgeInsets.only(
                  left: 15.h, right: 15.h, top: 4.h, bottom: 4.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 23.h,
                );
              },
              itemCount: 4,
              itemBuilder: (context, index) {
                return const CompletedCoursesSectionWidget();
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserInfo(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 15.h,
          vertical: 31.v,
        ),
        decoration: AppDecoration.fillWhiteA,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 70.v),
            _buildMessageList(context),
            SizedBox(height: 54.v),
            GestureDetector(
              onTap: () {
                print("Sign out botton clicked!");
              },
              child: Container(
                margin: EdgeInsets.only(left: 2.h),
                decoration: AppDecoration.outlineBlack9001.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder10,
                ),
                child: ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      height: 21.v,
                    );
                  },
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return const SignOutWidget();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBadgeList(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(
          left: 30.h,
          right: 30.h,
          top: 4.h,
          bottom: 4.h,
        ),
        decoration: AppDecoration.outlineBlack9002.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder14,
        ),
        child: SizedBox(
          height: 153.v,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 21.h,
              );
            },
            itemCount: 5,
            itemBuilder: (context, index) {
              return const AchievementsSectionWidget();
            },
          ),
        ),
      ),
    );
  }
}
