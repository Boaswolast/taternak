import 'controller/edukasi_controller.dart';import 'package:flutter/material.dart';import 'package:taternak_v12/core/app_export.dart';import 'package:taternak_v12/presentation/cari_page/cari_page.dart';import 'package:taternak_v12/widgets/custom_bottom_bar.dart';import 'package:taternak_v12/widgets/custom_elevated_button.dart';class EdukasiScreen extends GetWidget<EdukasiController> {const EdukasiScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(child: SizedBox(height: 1365.v, width: double.maxFinite, child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.bottomLeft, child: Container(padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 16.v), decoration: BoxDecoration(borderRadius: BorderRadiusStyle.circleBorder15), child: Column(mainAxisSize: MainAxisSize.min, children: [_buildKontrolGiziHewan(), SizedBox(height: 218.v), Padding(padding: EdgeInsets.only(left: 23.h, right: 6.h), child: _buildKiatKiatMemulai(kiatKiatMemulai: "msg_kiat_kiat_memulai".tr)), SizedBox(height: 219.v), Padding(padding: EdgeInsets.only(left: 23.h, right: 6.h), child: _buildKiatKiatMemulai(kiatKiatMemulai: "msg_kiat_kiat_memulai".tr)), SizedBox(height: 219.v)]))), CustomImageView(imagePath: ImageConstant.imgImage17, height: 211.v, width: 414.h, radius: BorderRadius.circular(20.h), alignment: Alignment.topCenter), CustomImageView(imagePath: ImageConstant.imgImage18, height: 218.v, width: 414.h, radius: BorderRadius.circular(20.h), alignment: Alignment.topCenter, margin: EdgeInsets.only(top: 237.v)), CustomImageView(imagePath: ImageConstant.imgImage19, height: 218.v, width: 414.h, radius: BorderRadius.circular(20.h), alignment: Alignment.topCenter, margin: EdgeInsets.only(top: 479.v)), CustomElevatedButton(width: 125.h, text: "lbl_request_artikel".tr, margin: EdgeInsets.only(right: 17.h, bottom: 613.v), buttonStyle: CustomButtonStyles.fillGreen, buttonTextStyle: CustomTextStyles.bodyMediumOnErrorContainer_1, alignment: Alignment.bottomRight)])))), bottomNavigationBar: _buildBottomBar())); } 
/// Section Widget
Widget _buildKontrolGiziHewan() { return Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(left: 23.h), child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [Padding(padding: EdgeInsets.only(bottom: 4.v), child: Text("msg_kontrol_gizi_hewan".tr, style: CustomTextStyles.bodyMedium14_1)), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 23.v, width: 22.h, margin: EdgeInsets.only(left: 167.h), onTap: () {onTapImgArrowRight();})]))); } 
/// Section Widget
Widget _buildBottomBar() { return CustomBottomBar(onChanged: (BottomBarEnum type) {Get.toNamed(getCurrentRoute(type), id: 1);}); } 
/// Common widget
Widget _buildKiatKiatMemulai({required String kiatKiatMemulai}) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(top: 2.v, bottom: 1.v), child: Text(kiatKiatMemulai, style: CustomTextStyles.bodyMedium14_1.copyWith(color: appTheme.black900))), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 23.v, width: 22.h, margin: EdgeInsets.only(left: 124.h))]); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Beranda: return AppRoutes.cariPage; case BottomBarEnum.Cari: return "/"; case BottomBarEnum.Edukasi: return "/"; case BottomBarEnum.Akun: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.cariPage: return CariPage(); default: return DefaultWidget();} } 
/// Navigates to the cardEdukasiScreen when the action is triggered.
onTapImgArrowRight() { Get.toNamed(AppRoutes.cardEdukasiScreen, ); } 
 }