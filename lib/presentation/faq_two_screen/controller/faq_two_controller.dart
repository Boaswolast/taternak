import 'package:taternak_v12/core/app_export.dart';
import 'package:taternak_v12/presentation/faq_two_screen/models/faq_two_model.dart';

/// A controller class for the FaqTwoScreen.
///
/// This class manages the state of the FaqTwoScreen, including the
/// current faqTwoModelObj
class FaqTwoController extends GetxController {
  Rx<FaqTwoModel> faqTwoModelObj = FaqTwoModel().obs;
}
