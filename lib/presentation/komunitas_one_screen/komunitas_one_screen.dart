import '../komunitas_one_screen/widgets/komunitasone_item_widget.dart';
import 'controller/komunitas_one_controller.dart';
import 'models/komunitasone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:taternak_v12/core/app_export.dart';
import 'package:taternak_v12/presentation/cari_page/cari_page.dart';
import 'package:taternak_v12/widgets/app_bar/appbar_leading_image.dart';
import 'package:taternak_v12/widgets/app_bar/appbar_subtitle.dart';
import 'package:taternak_v12/widgets/app_bar/custom_app_bar.dart';
import 'package:taternak_v12/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class KomunitasOneScreen extends GetWidget<KomunitasOneController> {
  const KomunitasOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 245.v),
              child: Column(
                children: [
                  _buildKomunitasOne(),
                  SizedBox(height: 16.v),
                  Text(
                    "msg_tanya_ke_komunitas".tr,
                    style: CustomTextStyles.bodyMediumGray500,
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildButton(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 33.v,
      leadingWidth: 49.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgRewind,
        margin: EdgeInsets.only(
          left: 17.h,
          bottom: 9.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "lbl_komunitas".tr,
        margin: EdgeInsets.only(left: 11.h),
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildKomunitasOne() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 1.v,
          );
        },
        itemCount: controller
            .komunitasOneModelObj.value.komunitasoneItemList.value.length,
        itemBuilder: (context, index) {
          KomunitasoneItemModel model = controller
              .komunitasOneModelObj.value.komunitasoneItemList.value[index];
          return KomunitasoneItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildButton() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Beranda:
        return AppRoutes.cariPage;
      case BottomBarEnum.Cari:
        return "/";
      case BottomBarEnum.Edukasi:
        return "/";
      case BottomBarEnum.Akun:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.cariPage:
        return CariPage();
      default:
        return DefaultWidget();
    }
  }
}
