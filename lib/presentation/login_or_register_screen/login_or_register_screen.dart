import 'controller/login_or_register_controller.dart';
import 'package:flutter/material.dart';
import 'package:mhart_s_application1/core/app_export.dart';
import 'package:mhart_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:mhart_s_application1/widgets/custom_elevated_button.dart';

class LoginOrRegisterScreen extends GetWidget<LoginOrRegisterController> {
  const LoginOrRegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                height: 74.v,
                centerTitle: true,
                title: SizedBox(
                    width: 139.h,
                    child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "lbl_welcome".tr,
                              style: CustomTextStyles.labelLargeBold13),
                          TextSpan(
                              text: "msg_emotion_detection".tr,
                              style: theme.textTheme.bodySmall)
                        ]),
                        textAlign: TextAlign.center))),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 56.v),
                    child: Container(
                        height: 544.v,
                        width: double.maxFinite,
                        margin: EdgeInsets.only(bottom: 5.v),
                        child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgFavorite,
                                  height: 96.v,
                                  width: 99.h,
                                  alignment: Alignment.topCenter,
                                  margin: EdgeInsets.only(top: 9.v)),
                              CustomImageView(
                                  svgPath: ImageConstant.imgBgLime700,
                                  height: 111.v,
                                  width: 153.h,
                                  alignment: Alignment.bottomRight,
                                  margin: EdgeInsets.only(
                                      right: 64.h, bottom: 102.v)),
                              Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 17.h, vertical: 47.v),
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  ImageConstant.imgGroup6),
                                              fit: BoxFit.cover)),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            SizedBox(height: 73.v),
                                            CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgBgDeepPurple900,
                                                height: 28.v,
                                                width: 297.h),
                                            SizedBox(height: 21.v),
                                            SizedBox(
                                                width: 216.h,
                                                child: Text(
                                                    "msg_an_app_integrating".tr,
                                                    maxLines: 4,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: CustomTextStyles
                                                        .bodySmallWhiteA700
                                                        .copyWith(
                                                            height: 1.50))),
                                            SizedBox(height: 87.v),
                                            SizedBox(
                                                height: 44.v,
                                                width: 318.h,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    children: [
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: SizedBox(
                                                              height: 44.v,
                                                              width: 318.h,
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomLeft,
                                                                  children: [
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgRectangle26,
                                                                        height: 44
                                                                            .v,
                                                                        width: 318
                                                                            .h,
                                                                        radius: BorderRadius.circular(14
                                                                            .h),
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        onTap:
                                                                            () {
                                                                          onTapImgImageone();
                                                                        }),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .bottomLeft,
                                                                        child: Padding(
                                                                            padding:
                                                                                EdgeInsets.only(left: 52.h, bottom: 8.v),
                                                                            child: Text("lbl_login".tr, style: theme.textTheme.titleSmall)))
                                                                  ]))),
                                                      CustomElevatedButton(
                                                          width: 143.h,
                                                          text:
                                                              "lbl_register_now"
                                                                  .tr,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  right: 9.h),
                                                          buttonStyle:
                                                              CustomButtonStyles
                                                                  .fillIndigo,
                                                          alignment: Alignment
                                                              .centerRight)
                                                    ]))
                                          ]))),
                              CustomImageView(
                                  imagePath: ImageConstant.img4b7833c316af4,
                                  height: 191.v,
                                  width: 200.h,
                                  alignment: Alignment.topCenter)
                            ]))))));
  }

  /// Navigates to the loginPageScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the loginPageScreen.
  onTapImgImageone() {
    Get.toNamed(
      AppRoutes.loginPageScreen,
    );
  }
}
