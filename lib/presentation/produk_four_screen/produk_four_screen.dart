import 'controller/produk_four_controller.dart';
import 'package:flutter/material.dart';
import 'package:taternak_v12/core/app_export.dart';
import 'package:taternak_v12/widgets/app_bar/appbar_leading_image.dart';
import 'package:taternak_v12/widgets/app_bar/appbar_subtitle.dart';
import 'package:taternak_v12/widgets/app_bar/custom_app_bar.dart';
import 'package:taternak_v12/widgets/custom_elevated_button.dart';
import 'package:taternak_v12/widgets/custom_outlined_button.dart';
import 'package:taternak_v12/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProdukFourScreen extends GetWidget<ProdukFourController> {
  const ProdukFourScreen({Key? key})
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
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAtas(),
              SizedBox(height: 10.v),
              Expanded(
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: 778.v,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            margin: EdgeInsets.only(right: 4.h),
                            padding: EdgeInsets.symmetric(
                              horizontal: 27.h,
                              vertical: 13.v,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "msg_lengkapi_data_hewanmu".tr,
                                    style: CustomTextStyles.bodySmallPrimary_1,
                                  ),
                                ),
                                SizedBox(height: 3.v),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "msg_lengkapi_terlebh".tr,
                                    style: CustomTextStyles.bodySmallPrimary_1,
                                  ),
                                ),
                                SizedBox(height: 20.v),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 9.h,
                                      right: 21.h,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 17.v,
                                          width: 50.h,
                                          margin: EdgeInsets.only(bottom: 6.v),
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  "lbl_jenis_hewan".tr,
                                                  style: CustomTextStyles
                                                      .bodySmall_2,
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  "lbl_jenis_hewan".tr,
                                                  style: CustomTextStyles
                                                      .bodySmall_2,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgArrowup,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize,
                                          margin: EdgeInsets.only(top: 3.v),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 14.v),
                                Divider(
                                  indent: 9.h,
                                  endIndent: 16.h,
                                ),
                                SizedBox(height: 9.v),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 13.h),
                                    child: Text(
                                      "lbl_harga".tr,
                                      style: CustomTextStyles.bodySmall_2,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 17.v),
                                Divider(
                                  indent: 13.h,
                                  endIndent: 12.h,
                                ),
                                SizedBox(height: 15.v),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 13.h),
                                    child: Text(
                                      "lbl_berat".tr,
                                      style: CustomTextStyles.bodySmall_2,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 16.v),
                                Divider(
                                  indent: 10.h,
                                  endIndent: 15.h,
                                ),
                                SizedBox(height: 6.v),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 13.h,
                                    right: 21.h,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 5.v),
                                        child: Text(
                                          "lbl_kondisi_hewan".tr,
                                          style: CustomTextStyles.bodySmall_2,
                                        ),
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgArrowup,
                                        height: 20.adaptSize,
                                        width: 20.adaptSize,
                                        margin: EdgeInsets.only(top: 2.v),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 167.v,
                                  width: 331.h,
                                  child: Stack(
                                    alignment: Alignment.bottomLeft,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                          padding: EdgeInsets.only(top: 37.v),
                                          child: Text(
                                            "lbl_jenis_kelamin".tr,
                                            textAlign: TextAlign.justify,
                                            style: CustomTextStyles.bodySmall_2,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                          padding:
                                              EdgeInsets.only(bottom: 39.v),
                                          child: Text(
                                            "msg_jenis_pengiriman2".tr,
                                            style: CustomTextStyles.bodySmall_2,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                          padding:
                                              EdgeInsets.only(bottom: 73.v),
                                          child: SizedBox(
                                            width: 153.h,
                                            child: Divider(),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                          padding: EdgeInsets.only(top: 14.v),
                                          child: SizedBox(
                                            width: 331.h,
                                            child: Divider(),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                          padding:
                                              EdgeInsets.only(bottom: 18.v),
                                          child: SizedBox(
                                            width: 331.h,
                                            child: Divider(),
                                          ),
                                        ),
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgArrowup,
                                        height: 20.adaptSize,
                                        width: 20.adaptSize,
                                        alignment: Alignment.bottomRight,
                                        margin: EdgeInsets.only(
                                          right: 19.h,
                                          bottom: 40.v,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                            top: 57.v,
                                            right: 99.h,
                                          ),
                                          child: Text(
                                            "lbl_siap_dijual".tr,
                                            style: CustomTextStyles.bodySmall_2,
                                          ),
                                        ),
                                      ),
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgMonochromeToggle,
                                        height: 31.v,
                                        width: 40.h,
                                        alignment: Alignment.topRight,
                                        margin: EdgeInsets.only(
                                          top: 51.v,
                                          right: 49.h,
                                        ),
                                      ),
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgArrowUpBlack900,
                                        height: 20.adaptSize,
                                        width: 20.adaptSize,
                                        alignment: Alignment.topLeft,
                                        margin: EdgeInsets.only(
                                          left: 133.h,
                                          top: 51.v,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                          height: 167.v,
                                          width: 201.h,
                                          margin: EdgeInsets.only(right: 3.h),
                                          child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: SizedBox(
                                                  height: 30.v,
                                                  width: 26.h,
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.topCenter,
                                                child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 4.v),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      SizedBox(height: 1.v),
                                                      Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 7.h),
                                                          child: Text(
                                                            "lbl_sakit".tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodyMedium,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(height: 1.v),
                                                      SizedBox(
                                                        width: 200.h,
                                                        child: Divider(),
                                                      ),
                                                      SizedBox(height: 9.v),
                                                      _buildSehat(),
                                                      SizedBox(height: 11.v),
                                                      _buildPotongPaksa(),
                                                      SizedBox(height: 10.v),
                                                      Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 7.h),
                                                          child: Text(
                                                            "lbl_mati".tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodyMedium,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 27.v),
                                                  child: SizedBox(
                                                    width: 200.h,
                                                    child: Divider(),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 11.v),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 13.h),
                                    child: Text(
                                      "msg_deskripsi_produk2".tr,
                                      style: CustomTextStyles.bodySmall_2,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 85.v),
                                Divider(
                                  indent: 13.h,
                                  endIndent: 12.h,
                                ),
                                SizedBox(height: 35.v),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 12.h),
                                    child: Text(
                                      "lbl_tambahkan_foto".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 6.v),
                                _buildPilihFile1(),
                                SizedBox(height: 36.v),
                                _buildRiwayatPenimbangan(),
                                SizedBox(height: 41.v),
                              ],
                            ),
                          ),
                        ),
                        _buildEdit(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAtas() {
    return Container(
      decoration: AppDecoration.fillPrimary,
      child: Column(
        children: [
          SizedBox(height: 27.v),
          CustomAppBar(
            leadingWidth: 49.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgRewind,
              margin: EdgeInsets.only(
                left: 17.h,
                bottom: 1.v,
              ),
            ),
            title: AppbarSubtitle(
              text: "lbl_detail_produk".tr,
              margin: EdgeInsets.only(left: 11.h),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSehat() {
    return CustomTextFormField(
      width: 200.h,
      controller: controller.sehatController,
      hintText: "lbl_sehat".tr,
      hintStyle: theme.textTheme.bodyMedium!,
      contentPadding: EdgeInsets.symmetric(horizontal: 7.h),
    );
  }

  /// Section Widget
  Widget _buildPotongPaksa() {
    return CustomTextFormField(
      width: 200.h,
      controller: controller.potongPaksaController,
      hintText: "lbl_potong_paksa".tr,
      hintStyle: theme.textTheme.bodyMedium!,
      contentPadding: EdgeInsets.symmetric(horizontal: 7.h),
    );
  }

  /// Section Widget
  Widget _buildPilihFile() {
    return CustomElevatedButton(
      width: 64.h,
      text: "lbl_pilih_file".tr,
      alignment: Alignment.centerRight,
    );
  }

  /// Section Widget
  Widget _buildEditText() {
    return CustomTextFormField(
      width: 300.h,
      controller: controller.editTextController,
      alignment: Alignment.centerLeft,
    );
  }

  /// Section Widget
  Widget _buildPilihFile1() {
    return SizedBox(
      height: 25.v,
      width: 332.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          _buildPilihFile(),
          _buildEditText(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRiwayatPenimbangan() {
    return Padding(
      padding: EdgeInsets.only(
        left: 13.h,
        right: 12.h,
      ),
      child: CustomTextFormField(
        controller: controller.riwayatPenimbanganController,
        hintText: "msg_riwayat_penimbangan".tr,
        textInputAction: TextInputAction.done,
      ),
    );
  }

  /// Section Widget
  Widget _buildEdit() {
    return CustomOutlinedButton(
      width: 331.h,
      text: "lbl_edit".tr,
      margin: EdgeInsets.only(bottom: 24.v),
      alignment: Alignment.bottomCenter,
    );
  }
}
