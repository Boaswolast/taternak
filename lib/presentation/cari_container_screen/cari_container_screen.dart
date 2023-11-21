import 'controller/cari_container_controller.dart';import 'package:flutter/material.dart';import 'package:taternak_v12/core/app_export.dart';import 'package:taternak_v12/presentation/cari_page/cari_page.dart';import 'package:taternak_v12/widgets/custom_bottom_bar.dart';class CariContainerScreen extends GetWidget<CariContainerController> {const CariContainerScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: Navigator(key: Get.nestedKey(1), initialRoute: AppRoutes.cariPage, onGenerateRoute: (routeSetting) => GetPageRoute(page: () => getCurrentPage(routeSetting.name!), transition: Transition.noTransition)), bottomNavigationBar: _buildBottomBar())); } 
/// Section Widget
Widget _buildBottomBar() { return CustomBottomBar(onChanged: (BottomBarEnum type) {Get.toNamed(getCurrentRoute(type), id: 1);}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Beranda: return AppRoutes.cariPage; case BottomBarEnum.Cari: return "/"; case BottomBarEnum.Edukasi: return "/"; case BottomBarEnum.Akun: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.cariPage: return CariPage(); default: return DefaultWidget();} } 
 }
