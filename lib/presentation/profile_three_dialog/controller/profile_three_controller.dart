import 'package:taternak_v12/core/app_export.dart';
import 'package:taternak_v12/presentation/profile_three_dialog/models/profile_three_model.dart';

/// A controller class for the ProfileThreeDialog.
///
/// This class manages the state of the ProfileThreeDialog, including the
/// current profileThreeModelObj
class ProfileThreeController extends GetxController {
  Rx<ProfileThreeModel> profileThreeModelObj = ProfileThreeModel().obs;
}
