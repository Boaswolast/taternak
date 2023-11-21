import 'package:taternak_v12/core/app_export.dart';
import 'package:taternak_v12/presentation/edit_profile_one_screen/models/edit_profile_one_model.dart';

/// A controller class for the EditProfileOneScreen.
///
/// This class manages the state of the EditProfileOneScreen, including the
/// current editProfileOneModelObj
class EditProfileOneController extends GetxController {
  Rx<EditProfileOneModel> editProfileOneModelObj = EditProfileOneModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (var element in editProfileOneModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    editProfileOneModelObj.value.dropdownItemList.refresh();
  }
}
