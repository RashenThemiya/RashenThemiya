import 'controller/login_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:mhart_s_application1/core/app_export.dart';
import 'package:mhart_s_application1/core/utils/validation_functions.dart';
import 'package:mhart_s_application1/widgets/custom_elevated_button.dart';
import 'package:mhart_s_application1/widgets/custom_icon_button.dart';
import 'package:mhart_s_application1/widgets/custom_text_form_field.dart';
import 'package:mhart_s_application1/domain/facebookauth/facebook_auth_helper.dart';

// ignore_for_file: must_be_immutable
class LoginPageScreen extends GetWidget<LoginPageController> {
  LoginPageScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: SingleChildScrollView(
                        child: Container(
                            padding: EdgeInsets.symmetric(vertical: 52.v),
                            child: Column(children: [
                              SizedBox(
                                  height: 446.v,
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 110.h,
                                                    top: 17.v,
                                                    right: 110.h),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      SizedBox(
                                                          width: 139.h,
                                                          child: RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                        text: "lbl_welcome_back"
                                                                            .tr,
                                                                        style: CustomTextStyles
                                                                            .labelLargeBold13),
                                                                    TextSpan(
                                                                        text: "msg_emotion_detection"
                                                                            .tr,
                                                                        style: theme
                                                                            .textTheme
                                                                            .bodySmall)
                                                                  ]),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center)),
                                                      SizedBox(height: 73.v),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgFavorite,
                                                          height: 96.v,
                                                          width: 99.h)
                                                    ]))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowleft,
                                                      height: 23.v,
                                                      width: 24.h,
                                                      margin: EdgeInsets.only(
                                                          right: 6.h)),
                                                  SizedBox(height: 3.v),
                                                  SizedBox(
                                                      height: 419.v,
                                                      width: double.maxFinite,
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child:
                                                                    Container(
                                                                        padding: EdgeInsets.symmetric(
                                                                            horizontal: 20
                                                                                .h,
                                                                            vertical: 39
                                                                                .v),
                                                                        decoration: BoxDecoration(
                                                                            image: DecorationImage(
                                                                                image: AssetImage(ImageConstant
                                                                                    .imgGroup41),
                                                                                fit: BoxFit
                                                                                    .cover)),
                                                                        child: Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                            children: [
                                                                              SizedBox(
                                                                                  height: 208.v,
                                                                                  width: 314.h,
                                                                                  child: Stack(alignment: Alignment.topCenter, children: [
                                                                                    CustomImageView(svgPath: ImageConstant.imgBg, height: 111.v, width: 153.h, alignment: Alignment.topCenter, margin: EdgeInsets.only(top: 23.v)),
                                                                                    CustomImageView(imagePath: ImageConstant.img4b7833c316af4, height: 50.v, width: 60.h, alignment: Alignment.topCenter),
                                                                                    Align(
                                                                                        alignment: Alignment.bottomCenter,
                                                                                        child: Padding(
                                                                                            padding: EdgeInsets.only(right: 2.h),
                                                                                            child: Column(mainAxisSize: MainAxisSize.min, children: [
                                                                                              CustomTextFormField(
                                                                                                  controller: controller.emailController,
                                                                                                  hintText: "lbl_email".tr,
                                                                                                  textInputType: TextInputType.emailAddress,
                                                                                                  validator: (value) {
                                                                                                    if (value == null || (!isValidEmail(value, isRequired: true))) {
                                                                                                      return "Please enter valid email";
                                                                                                    }
                                                                                                    return null;
                                                                                                  }),
                                                                                              SizedBox(height: 12.v),
                                                                                              CustomTextFormField(
                                                                                                  controller: controller.passwordController,
                                                                                                  hintText: "lbl_password".tr,
                                                                                                  textInputAction: TextInputAction.done,
                                                                                                  textInputType: TextInputType.visiblePassword,
                                                                                                  validator: (value) {
                                                                                                    if (value == null || (!isValidPassword(value, isRequired: true))) {
                                                                                                      return "Please enter valid password";
                                                                                                    }
                                                                                                    return null;
                                                                                                  },
                                                                                                  obscureText: true)
                                                                                            ]))),
                                                                                    Align(alignment: Alignment.bottomCenter, child: Container(width: 312.h, margin: EdgeInsets.only(bottom: 53.v)))
                                                                                  ])),
                                                                              Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(top: 14.v, right: 9.h), child: Text("msg_forgot_password".tr, style: CustomTextStyles.titleSmallOutfitBluegray200))),
                                                                              SizedBox(height: 40.v),
                                                                              CustomElevatedButton(
                                                                                  width: 151.h,
                                                                                  text: "lbl_login".tr,
                                                                                  onTap: () {
                                                                                    onTapLogin();
                                                                                  }),
                                                                              SizedBox(height: 2.v)
                                                                            ]))),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgBgDeepPurple900,
                                                                height: 28.v,
                                                                width: 297.h,
                                                                alignment: Alignment
                                                                    .bottomCenter)
                                                          ]))
                                                ]))
                                      ])),
                              SizedBox(height: 128.v),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 9.v, bottom: 10.v),
                                        child: SizedBox(
                                            width: 118.h, child: Divider())),
                                    Padding(
                                        padding: EdgeInsets.only(left: 16.h),
                                        child: Text("lbl_or_log_in_with".tr,
                                            style: CustomTextStyles
                                                .titleSmallWhiteA700)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 8.v, bottom: 10.v),
                                        child: SizedBox(
                                            width: 123.h,
                                            child: Divider(indent: 25.h)))
                                  ]),
                              SizedBox(height: 29.v),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomIconButton(
                                        height: 51.adaptSize,
                                        width: 51.adaptSize,
                                        padding: EdgeInsets.all(10.h),
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgGooglelogo)),
                                    CustomIconButton(
                                        height: 51.adaptSize,
                                        width: 51.adaptSize,
                                        margin: EdgeInsets.only(left: 20.h),
                                        padding: EdgeInsets.all(9.h),
                                        onTap: () {
                                          onTapBtnFacebookone();
                                        },
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgFacebook)),
                                    CustomIconButton(
                                        height: 51.adaptSize,
                                        width: 51.adaptSize,
                                        margin: EdgeInsets.only(left: 20.h),
                                        padding: EdgeInsets.all(10.h),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgFire))
                                  ]),
                              SizedBox(height: 17.v)
                            ])))))));
  }

  /// Navigates to the homePageContainerScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the homePageContainerScreen.
  onTapLogin() {
    Get.toNamed(
      AppRoutes.homePageContainerScreen,
    );
  }

  /// Performs a Facebook sign-in and returns a [FacebookUser] object.
  ///
  /// If the sign-in is successful, the [onSuccess] callback will be called with
  /// a TODO comment needed to be modified by you.
  /// If the sign-in fails, the [onError] callback will be called with the error message.
  ///
  /// Throws an exception if the Facebook sign-in process fails.
  onTapBtnFacebookone() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }
}
