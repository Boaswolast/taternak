import '../controller/edit_profile_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EditProfileOneScreen.
///
/// This class ensures that the EditProfileOneController is created when the
/// EditProfileOneScreen is first loaded.
class EditProfileOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditProfileOneController());
  }
}
