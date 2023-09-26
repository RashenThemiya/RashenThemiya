import 'controller/home_controller.dart';
import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:mhart_s_application1/core/app_export.dart';
import 'package:mhart_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:mhart_s_application1/widgets/app_bar/appbar_image_1.dart';
import 'package:mhart_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:mhart_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:mhart_s_application1/widgets/custom_outlined_button.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key})
      : super(
          key: key,
        );

  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          leadingWidth: 45.h,
          leading: AppbarImage(
            svgPath: ImageConstant.imgGroup,
            margin: EdgeInsets.only(
              left: 24.h,
              top: 9.v,
              bottom: 11.v,
            ),
          ),
          centerTitle: true,
          title: AppbarTitle(
            text: "lbl_moodify".tr,
          ),
          actions: [
            AppbarImage1(
              svgPath: ImageConstant.imgArrowleft,
              margin: EdgeInsets.fromLTRB(19.h, 7.v, 19.h, 6.v),
            ),
          ],
          styleType: Style.bgGradientnamebluegray90003nameblack900opacity0,
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 19.v),
            child: Column(
              children: [
                SizedBox(
                  width: 185.h,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "msg_love_the_person2".tr,
                          style: CustomTextStyles.labelLargeBold13,
                        ),
                        TextSpan(
                          text: "lbl_sandy_chungus".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 1.v),
                SizedBox(
                  height: 559.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgMusic,
                        height: 96.v,
                        width: 99.h,
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(top: 25.v),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgBgLime700,
                        height: 111.v,
                        width: 153.h,
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(
                          right: 64.h,
                          bottom: 101.v,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage,
                        height: 75.v,
                        width: 73.h,
                        radius: BorderRadius.circular(
                          36.h,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.h,
                            vertical: 62.v,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                ImageConstant.imgGroup8,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 29.h,
                                  top: 46.v,
                                  right: 34.h,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomOutlinedButton(
                                      width: 45.h,
                                      text: "lbl_36_c".tr,
                                      margin: EdgeInsets.only(bottom: 1.v),
                                    ),
                                    Container(
                                      decoration: AppDecoration.outlineBlueGray
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder17,
                                      ),
                                      child: CustomImageView(
                                        svgPath: ImageConstant.imgEdit,
                                        height: 20.v,
                                        width: 22.h,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 41.v),
                              Align(
                                alignment: Alignment.centerRight,
                                child: SizedBox(
                                  height: 310.v,
                                  width: 297.h,
                                  child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              decoration: AppDecoration.outline
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .customBorderTL33,
                                              ),
                                              child: OutlineGradientButton(
                                                padding: EdgeInsets.only(
                                                  left: 1.h,
                                                  top: 1.v,
                                                  right: 1.h,
                                                  bottom: 1.v,
                                                ),
                                                strokeWidth: 1.h,
                                                gradient: LinearGradient(
                                                  begin: Alignment(0.28, 0),
                                                  end: Alignment(0.4, 1.17),
                                                  colors: [
                                                    appTheme.whiteA700
                                                        .withOpacity(0.2),
                                                    appTheme.whiteA700
                                                        .withOpacity(0.2),
                                                  ],
                                                ),
                                                corners: Corners(
                                                  topLeft: Radius.circular(33),
                                                  topRight: Radius.circular(32),
                                                  bottomLeft:
                                                      Radius.circular(33),
                                                  bottomRight:
                                                      Radius.circular(32),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 16.h,
                                                    vertical: 13.v,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgUser,
                                                        height: 28.adaptSize,
                                                        width: 28.adaptSize,
                                                        margin: EdgeInsets.only(
                                                          top: 3.v,
                                                          bottom: 7.v,
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 131.h,
                                                        margin: EdgeInsets.only(
                                                          left: 8.h,
                                                          bottom: 2.v,
                                                        ),
                                                        child: RichText(
                                                          text: TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text:
                                                                    "lbl_mood_detector"
                                                                        .tr,
                                                                style: CustomTextStyles
                                                                    .labelLargeBold,
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    "msg_normal_happy_angry_sad"
                                                                        .tr,
                                                                style: CustomTextStyles
                                                                    .bodySmall10,
                                                              ),
                                                            ],
                                                          ),
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ),
                                                      CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgArrowright,
                                                        height: 22.v,
                                                        width: 24.h,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 17.v),
                                            Container(
                                              decoration: AppDecoration.outline1
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .customBorderTL33,
                                              ),
                                              child: OutlineGradientButton(
                                                padding: EdgeInsets.only(
                                                  left: 1.h,
                                                  top: 1.v,
                                                  right: 1.h,
                                                  bottom: 1.v,
                                                ),
                                                strokeWidth: 1.h,
                                                gradient: LinearGradient(
                                                  begin: Alignment(0.28, 0),
                                                  end: Alignment(0.4, 1.17),
                                                  colors: [
                                                    appTheme.whiteA700
                                                        .withOpacity(0.1),
                                                    appTheme.whiteA700
                                                        .withOpacity(0.1),
                                                  ],
                                                ),
                                                corners: Corners(
                                                  topLeft: Radius.circular(33),
                                                  topRight: Radius.circular(32),
                                                  bottomLeft:
                                                      Radius.circular(33),
                                                  bottomRight:
                                                      Radius.circular(32),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 16.h,
                                                    vertical: 12.v,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgMenu,
                                                        height: 28.adaptSize,
                                                        width: 28.adaptSize,
                                                        margin: EdgeInsets.only(
                                                          top: 4.v,
                                                          bottom: 8.v,
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 104.h,
                                                        margin: EdgeInsets.only(
                                                          left: 8.h,
                                                          bottom: 3.v,
                                                        ),
                                                        child: RichText(
                                                          text: TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text:
                                                                    "lbl_instructions"
                                                                        .tr,
                                                                style: CustomTextStyles
                                                                    .labelLargeBold,
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    "msg_how_to_use_our_app"
                                                                        .tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .labelMedium,
                                                              ),
                                                            ],
                                                          ),
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ),
                                                      CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgArrowright,
                                                        height: 22.v,
                                                        width: 24.h,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 15.v),
                                            Container(
                                              decoration: AppDecoration.outline1
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .customBorderTL33,
                                              ),
                                              child: OutlineGradientButton(
                                                padding: EdgeInsets.only(
                                                  left: 1.h,
                                                  top: 1.v,
                                                  right: 1.h,
                                                  bottom: 1.v,
                                                ),
                                                strokeWidth: 1.h,
                                                gradient: LinearGradient(
                                                  begin: Alignment(0.28, 0),
                                                  end: Alignment(0.4, 1.17),
                                                  colors: [
                                                    appTheme.whiteA700
                                                        .withOpacity(0.1),
                                                    appTheme.whiteA700
                                                        .withOpacity(0.1),
                                                  ],
                                                ),
                                                corners: Corners(
                                                  topLeft: Radius.circular(33),
                                                  topRight: Radius.circular(32),
                                                  bottomLeft:
                                                      Radius.circular(33),
                                                  bottomRight:
                                                      Radius.circular(32),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 16.h,
                                                    vertical: 13.v,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgMenuWhiteA700,
                                                        height: 28.adaptSize,
                                                        width: 28.adaptSize,
                                                        margin: EdgeInsets.only(
                                                          top: 3.v,
                                                          bottom: 7.v,
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 104.h,
                                                        margin: EdgeInsets.only(
                                                          left: 8.h,
                                                          bottom: 2.v,
                                                        ),
                                                        child: RichText(
                                                          text: TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text:
                                                                    "lbl_records"
                                                                        .tr,
                                                                style: CustomTextStyles
                                                                    .labelLargeBold,
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    "msg_history_your_moods"
                                                                        .tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .labelMedium,
                                                              ),
                                                            ],
                                                          ),
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                          left: 39.h,
                                                          top: 1.v,
                                                        ),
                                                        decoration: AppDecoration
                                                            .outlineWhiteA7001
                                                            .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder17,
                                                        ),
                                                        child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowright,
                                                          height: 22.v,
                                                          width: 24.h,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 16.v),
                                            Container(
                                              decoration: AppDecoration.outline1
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .customBorderTL33,
                                              ),
                                              child: OutlineGradientButton(
                                                padding: EdgeInsets.only(
                                                  left: 1.h,
                                                  top: 1.v,
                                                  right: 1.h,
                                                  bottom: 1.v,
                                                ),
                                                strokeWidth: 1.h,
                                                gradient: LinearGradient(
                                                  begin: Alignment(0.28, 0),
                                                  end: Alignment(0.4, 1.17),
                                                  colors: [
                                                    appTheme.whiteA700
                                                        .withOpacity(0.1),
                                                    appTheme.whiteA700
                                                        .withOpacity(0.1),
                                                  ],
                                                ),
                                                corners: Corners(
                                                  topLeft: Radius.circular(33),
                                                  topRight: Radius.circular(32),
                                                  bottomLeft:
                                                      Radius.circular(33),
                                                  bottomRight:
                                                      Radius.circular(32),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 16.h,
                                                    vertical: 12.v,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgGrid,
                                                        height: 28.adaptSize,
                                                        width: 28.adaptSize,
                                                        margin: EdgeInsets.only(
                                                          top: 3.v,
                                                          bottom: 8.v,
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 95.h,
                                                        margin: EdgeInsets.only(
                                                          left: 8.h,
                                                          bottom: 5.v,
                                                        ),
                                                        child: RichText(
                                                          text: TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text:
                                                                    "lbl_enjoy"
                                                                        .tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .labelLarge,
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    "msg_without_detection"
                                                                        .tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .labelMedium,
                                                              ),
                                                            ],
                                                          ),
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                          left: 48.h,
                                                          top: 1.v,
                                                        ),
                                                        decoration: AppDecoration
                                                            .outlineWhiteA7001
                                                            .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder17,
                                                        ),
                                                        child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowright,
                                                          height: 22.v,
                                                          width: 24.h,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath:
                                            ImageConstant.imgBgDeepPurple900,
                                        height: 28.v,
                                        width: 297.h,
                                        alignment: Alignment.topCenter,
                                        margin: EdgeInsets.only(top: 64.v),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
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
      ),
    );
  }
}
