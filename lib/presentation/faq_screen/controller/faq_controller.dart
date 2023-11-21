import 'package:taternak_v12/core/app_export.dart';
import 'package:taternak_v12/presentation/faq_screen/models/faq_model.dart';

/// A controller class for the FaqScreen.
///
/// This class manages the state of the FaqScreen, including the
/// current faqModelObj
class FaqController extends GetxController {
  Rx<FaqModel> faqModelObj = FaqModel().obs;
}
