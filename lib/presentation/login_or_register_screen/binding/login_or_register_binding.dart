import '../controller/login_or_register_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoginOrRegisterScreen.
///
/// This class ensures that the LoginOrRegisterController is created when the
/// LoginOrRegisterScreen is first loaded.
class LoginOrRegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginOrRegisterController());
  }
}
