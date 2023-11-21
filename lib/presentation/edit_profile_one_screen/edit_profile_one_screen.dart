import 'controller/edit_profile_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:taternak_v12/core/app_export.dart';
import 'package:taternak_v12/presentation/cari_page/cari_page.dart';
import 'package:taternak_v12/widgets/custom_bottom_bar.dart';
import 'package:taternak_v12/widgets/custom_drop_down.dart';
import 'package:taternak_v12/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class EditProfileOneScreen extends GetWidget<EditProfileOneController> {
  const EditProfileOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 74.v),
              child: Column(
                children: [
                  _buildEditFoto(),
                  SizedBox(height: 21.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 35.h),
                      child: Text(
                        "lbl_nama_ternak".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 24.v),
                  Divider(
                    color: appTheme.black900,
                    indent: 35.h,
                    endIndent: 35.h,
                  ),
                  SizedBox(height: 22.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 35.h),
                    child: CustomDropDown(
                      icon: Container(
                        margin: EdgeInsets.only(
                          left: 30.h,
                          right: 6.h,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgArrowup,
                          height: 25.adaptSize,
                          width: 25.adaptSize,
                        ),
                      ),
                      hintText: "lbl_jenis_ternak".tr,
                      hintStyle: theme.textTheme.bodyMedium!,
                      items: controller
                          .editProfileOneModelObj.value.dropdownItemList!.value,
                      contentPadding: EdgeInsets.symmetric(vertical: 2.v),
                      borderDecoration: DropDownStyleHelper.underLineBlack,
                      onChanged: (value) {
                        controller.onSelected(value);
                      },
                    ),
                  ),
                  SizedBox(height: 31.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 35.h),
                      child: Text(
                        "lbl_bio".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.v),
                  Divider(
                    color: appTheme.black900,
                    indent: 35.h,
                    endIndent: 35.h,
                  ),
                  SizedBox(height: 30.v),
                  _buildAlamat(),
                  SizedBox(height: 24.v),
                  Divider(
                    color: appTheme.black900,
                    indent: 35.h,
                    endIndent: 35.h,
                  ),
                  SizedBox(height: 80.v),
                  CustomOutlinedButton(
                    text: "lbl_edit_profil".tr,
                    margin: EdgeInsets.only(
                      left: 43.h,
                      right: 40.h,
                    ),
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
  Widget _buildEditFoto() {
    return SizedBox(
      height: 242.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 157.h,
                vertical: 72.v,
              ),
              decoration: AppDecoration.fillPrimary,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 12.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage20,
                    height: 60.v,
                    width: 61.h,
                    alignment: Alignment.center,
                  ),
                  SizedBox(height: 3.v),
                  Padding(
                    padding: EdgeInsets.only(right: 6.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_edit_foto".tr,
                          style: CustomTextStyles.bodyMediumOnErrorContainer_1,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgMultimediaCamera,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 33.v),
              child: Text(
                "msg2".tr,
                textAlign: TextAlign.justify,
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAlamat() {
    return Padding(
      padding: EdgeInsets.only(
        left: 35.h,
        right: 45.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 1.v,
            ),
            child: Text(
              "lbl_alamat".tr,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgLocationAndMap,
            height: 25.adaptSize,
            width: 25.adaptSize,
          ),
        ],
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
