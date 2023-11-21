import 'controller/produk_controller.dart';
import 'package:flutter/material.dart';
import 'package:taternak_v12/core/app_export.dart';
import 'package:taternak_v12/widgets/app_bar/appbar_leading_image.dart';
import 'package:taternak_v12/widgets/app_bar/appbar_subtitle.dart';
import 'package:taternak_v12/widgets/app_bar/custom_app_bar.dart';
import 'package:taternak_v12/widgets/custom_drop_down.dart';
import 'package:taternak_v12/widgets/custom_elevated_button.dart';
import 'package:taternak_v12/widgets/custom_outlined_button.dart';
import 'package:taternak_v12/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProdukScreen extends GetWidget<ProdukController> {
  const ProdukScreen({Key? key})
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
              SizedBox(height: 23.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 10.h,
                      right: 41.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 19.h),
                            child: Text(
                              "msg_lengkapi_data_hewanmu".tr,
                              style: CustomTextStyles.bodySmallPrimary_1,
                            ),
                          ),
                        ),
                        SizedBox(height: 3.v),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "msg_lengkapi_terlebh".tr,
                            style: CustomTextStyles.bodySmallPrimary_1,
                          ),
                        ),
                        SizedBox(height: 20.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 28.h,
                            right: 9.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                        style: CustomTextStyles.bodySmall_2,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "lbl_jenis_hewan".tr,
                                        style: CustomTextStyles.bodySmall_2,
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
                        SizedBox(height: 14.v),
                        Divider(
                          indent: 28.h,
                          endIndent: 4.h,
                        ),
                        SizedBox(height: 9.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 32.h),
                            child: Text(
                              "lbl_harga".tr,
                              style: CustomTextStyles.bodySmall_2,
                            ),
                          ),
                        ),
                        SizedBox(height: 17.v),
                        Divider(
                          indent: 32.h,
                        ),
                        SizedBox(height: 15.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 32.h),
                            child: Text(
                              "lbl_berat".tr,
                              style: CustomTextStyles.bodySmall_2,
                            ),
                          ),
                        ),
                        SizedBox(height: 16.v),
                        Padding(
                          padding: EdgeInsets.only(left: 29.h),
                          child: CustomDropDown(
                            icon: Container(
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 10.v, 9.h, 15.v),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgArrowup,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                              ),
                            ),
                            hintText: "lbl_kondisi_hewan".tr,
                            items: controller
                                .produkModelObj.value.dropdownItemList!.value,
                            onChanged: (value) {
                              controller.onSelected(value);
                            },
                          ),
                        ),
                        SizedBox(height: 14.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 32.h,
                              right: 49.h,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 9.v,
                                    bottom: 26.v,
                                  ),
                                  child: Text(
                                    "lbl_jenis_kelamin".tr,
                                    style: CustomTextStyles.bodySmall_2,
                                  ),
                                ),
                                Spacer(),
                                CustomImageView(
                                  imagePath: ImageConstant.imgArrowup,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  margin: EdgeInsets.only(bottom: 33.v),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 23.h,
                                    top: 28.v,
                                    bottom: 7.v,
                                  ),
                                  child: Text(
                                    "lbl_siap_dijual".tr,
                                    style: CustomTextStyles.bodySmall_2,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgMonochromeToggle,
                                  height: 31.v,
                                  width: 40.h,
                                  margin: EdgeInsets.only(
                                    left: 10.h,
                                    top: 22.v,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        _buildLineTwentySix(),
                        SizedBox(height: 32.v),
                        Divider(
                          indent: 32.h,
                        ),
                        SizedBox(height: 35.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 31.h),
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
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildButton(),
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
  Widget _buildLineTwentySix() {
    return SizedBox(
      height: 167.v,
      width: 363.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 32.h,
                top: 11.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 153.h,
                    child: Divider(),
                  ),
                  SizedBox(height: 16.v),
                  Text(
                    "msg_jenis_pengiriman2".tr,
                    style: CustomTextStyles.bodySmall_2,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 32.h,
                bottom: 53.v,
              ),
              child: Text(
                "msg_deskripsi_produk2".tr,
                style: CustomTextStyles.bodySmall_2,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(top: 66.v),
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
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(
              top: 25.v,
              right: 19.h,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2.v),
                  decoration: AppDecoration.fillOnErrorContainer,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 4.v),
                      Padding(
                        padding: EdgeInsets.only(left: 7.h),
                        child: Text(
                          "lbl_jantan".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      SizedBox(height: 1.v),
                      SizedBox(
                        width: 200.h,
                        child: Divider(),
                      ),
                      SizedBox(height: 9.v),
                      Padding(
                        padding: EdgeInsets.only(left: 7.h),
                        child: Text(
                          "lbl_betina".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 200.h,
                  child: Divider(),
                ),
                SizedBox(height: 71.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    height: 30.v,
                    width: 26.h,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
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
      padding: EdgeInsets.only(left: 32.h),
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
      text: "lbl_edit".tr,
    );
  }

  /// Section Widget
  Widget _buildButton() {
    return Container(
      margin: EdgeInsets.only(
        left: 50.h,
        right: 33.h,
        bottom: 24.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer,
      child: _buildEdit(),
    );
  }
}
