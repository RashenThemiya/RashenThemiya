import 'package:mhart_s_application1/core/app_export.dart';
import 'package:mhart_s_application1/presentation/login_or_register_screen/models/login_or_register_model.dart';

/// A controller class for the LoginOrRegisterScreen.
///
/// This class manages the state of the LoginOrRegisterScreen, including the
/// current loginOrRegisterModelObj
class LoginOrRegisterController extends GetxController {
  Rx<LoginOrRegisterModel> loginOrRegisterModelObj = LoginOrRegisterModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.loginPageScreen,
      );
    });
  }
}
