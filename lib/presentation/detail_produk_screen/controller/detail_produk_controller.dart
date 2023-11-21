import 'package:taternak_v12/core/app_export.dart';
import 'package:taternak_v12/presentation/detail_produk_screen/models/detail_produk_model.dart';

/// A controller class for the DetailProdukScreen.
///
/// This class manages the state of the DetailProdukScreen, including the
/// current detailProdukModelObj
class DetailProdukController extends GetxController {
  Rx<DetailProdukModel> detailProdukModelObj = DetailProdukModel().obs;
}
