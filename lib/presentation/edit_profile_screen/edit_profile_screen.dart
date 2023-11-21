import 'controller/edit_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:taternak_v12/core/app_export.dart';
import 'package:taternak_v12/presentation/cari_page/cari_page.dart';
import 'package:taternak_v12/widgets/custom_bottom_bar.dart';
import 'package:taternak_v12/widgets/custom_outlined_button.dart';
import 'package:taternak_v12/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class EditProfileScreen extends GetWidget<EditProfileController> {
  const EditProfileScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 68.v),
              child: Column(
                children: [
                  _buildFrame(),
                  SizedBox(height: 25.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 35.h),
                      child: Text(
                        "lbl_nama_ternak".tr,
                        textAlign: TextAlign.justify,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 23.v),
                  Divider(
                    color: appTheme.black900,
                    indent: 35.h,
                    endIndent: 35.h,
                  ),
                  SizedBox(height: 22.v),
                  _buildJenisTernak(),
                  SizedBox(height: 10.v),
                  _buildKambing(),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      width: 231.h,
                      child: Divider(
                        endIndent: 45.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 23.v),
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
  Widget _buildFrame() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 33.v),
      decoration: AppDecoration.fillPrimary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 51.v),
          CustomImageView(
            imagePath: ImageConstant.imgImage20,
            height: 60.v,
            width: 61.h,
          ),
          SizedBox(height: 3.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "lbl_edit_foto".tr,
                style: CustomTextStyles.bodyMediumOnErrorContainer_1,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgMultimediaCamera,
                height: 20.adaptSize,
                width: 20.adaptSize,
                margin: EdgeInsets.only(left: 12.h),
              ),
            ],
          ),
          SizedBox(height: 11.v),
          Text(
            "msg2".tr,
            textAlign: TextAlign.justify,
            style: theme.textTheme.titleLarge,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildJenisTernak() {
    return Padding(
      padding: EdgeInsets.only(
        left: 35.h,
        right: 41.h,
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
              "lbl_jenis_ternak".tr,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowup,
            height: 25.adaptSize,
            width: 25.adaptSize,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildKambing() {
    return SizedBox(
      height: 136.v,
      width: 344.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 36.v),
              child: Text(
                "lbl_bio".tr,
                textAlign: TextAlign.justify,
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              "lbl_alamat".tr,
              textAlign: TextAlign.justify,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 6.v),
              child: SizedBox(
                width: 344.h,
                child: Divider(
                  color: appTheme.black900,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 44.v),
              child: SizedBox(
                width: 344.h,
                child: Divider(
                  color: appTheme.black900,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 120.v,
              width: 188.h,
              margin: EdgeInsets.only(right: 10.h),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgLocationAndMapBlack900,
                    height: 22.v,
                    width: 25.h,
                    alignment: Alignment.bottomRight,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      decoration: AppDecoration.fillOnErrorContainer,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 7.h),
                              child: Text(
                                "lbl_babi2".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                          ),
                          SizedBox(height: 1.v),
                          SizedBox(
                            width: 188.h,
                            child: Divider(),
                          ),
                          SizedBox(height: 1.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 7.h),
                              child: Text(
                                "lbl_kerbau".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                          ),
                          SizedBox(height: 1.v),
                          SizedBox(
                            width: 188.h,
                            child: Divider(),
                          ),
                          SizedBox(height: 2.v),
                          CustomTextFormField(
                            width: 188.h,
                            controller: controller.kambingController,
                            hintText: "lbl_kambing".tr,
                            hintStyle: theme.textTheme.bodyMedium!,
                            textInputAction: TextInputAction.done,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 7.h),
                          ),
                          SizedBox(height: 3.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 7.h),
                              child: Text(
                                "lbl_sapi2".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                          ),
                          SizedBox(height: 1.v),
                          SizedBox(
                            height: 20.v,
                            width: 188.h,
                            child: Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 1.v),
                                    child: SizedBox(
                                      width: 188.h,
                                      child: Divider(),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 7.h),
                                    child: Text(
                                      "lbl_domba".tr,
                                      style: theme.textTheme.bodyMedium,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
