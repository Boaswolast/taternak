import 'package:taternak_v12/core/app_export.dart';
import 'package:taternak_v12/presentation/produk_two_dialog/models/produk_two_model.dart';

/// A controller class for the ProdukTwoDialog.
///
/// This class manages the state of the ProdukTwoDialog, including the
/// current produkTwoModelObj
class ProdukTwoController extends GetxController {
  Rx<ProdukTwoModel> produkTwoModelObj = ProdukTwoModel().obs;
}
