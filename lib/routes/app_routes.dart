import 'package:mhart_s_application1/presentation/login_page_screen/login_page_screen.dart';
import 'package:mhart_s_application1/presentation/login_page_screen/binding/login_page_binding.dart';
import 'package:mhart_s_application1/presentation/home_page_container_screen/home_page_container_screen.dart';
import 'package:mhart_s_application1/presentation/home_page_container_screen/binding/home_page_container_binding.dart';
import 'package:mhart_s_application1/presentation/login_or_register_screen/login_or_register_screen.dart';
import 'package:mhart_s_application1/presentation/login_or_register_screen/binding/login_or_register_binding.dart';
import 'package:mhart_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:mhart_s_application1/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String loginPageScreen = '/login_page_screen';

  static const String homePage = '/home_page';

  static const String homePageContainerScreen = '/home_page_container_screen';

  static const String loginOrRegisterScreen = '/login_or_register_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: loginPageScreen,
      page: () => LoginPageScreen(),
      bindings: [
        LoginPageBinding(),
      ],
    ),
    GetPage(
      name: homePageContainerScreen,
      page: () => HomePageContainerScreen(),
      bindings: [
        HomePageContainerBinding(),
      ],
    ),
    GetPage(
      name: loginOrRegisterScreen,
      page: () => LoginOrRegisterScreen(),
      bindings: [
        LoginOrRegisterBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => LoginOrRegisterScreen(),
      bindings: [
        LoginOrRegisterBinding(),
      ],
    )
  ];
}
