import 'package:taternak_v12/core/app_export.dart';import 'package:taternak_v12/presentation/pembayaran_screen/models/pembayaran_model.dart';import 'package:flutter/material.dart';/// A controller class for the PembayaranScreen.
///
/// This class manages the state of the PembayaranScreen, including the
/// current pembayaranModelObj
class PembayaranController extends GetxController {TextEditingController ninetyTwoController = TextEditingController();

Rx<PembayaranModel> pembayaranModelObj = PembayaranModel().obs;

@override void onClose() { super.onClose(); ninetyTwoController.dispose(); } 
 }
