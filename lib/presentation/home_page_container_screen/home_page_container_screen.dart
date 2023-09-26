import 'controller/home_page_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:mhart_s_application1/core/app_export.dart';
import 'package:mhart_s_application1/presentation/home_page/home_page.dart';
import 'package:mhart_s_application1/widgets/custom_bottom_bar.dart';

class HomePageContainerScreen extends GetWidget<HomePageContainerController> {
  const HomePageContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.homePage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Minimize:
        return AppRoutes.homePage;
      case BottomBarEnum.Businesscredit:
        return "/";
      case BottomBarEnum.Usersaccount:
        return "/";
      case BottomBarEnum.Statistic:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      default:
        return DefaultWidget();
    }
  }
}
