import 'package:taternak_v12/core/app_export.dart';import 'package:taternak_v12/presentation/produk_three_screen/models/produk_three_model.dart';/// A controller class for the ProdukThreeScreen.
///
/// This class manages the state of the ProdukThreeScreen, including the
/// current produkThreeModelObj
class ProdukThreeController extends GetxController {Rx<ProdukThreeModel> produkThreeModelObj = ProdukThreeModel().obs;

@override void onReady() { Future.delayed(const Duration(milliseconds: 3000), (){
Get.offNamed(AppRoutes.cariHewanScreen,);}); } 
 }
