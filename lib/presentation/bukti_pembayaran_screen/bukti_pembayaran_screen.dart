import 'controller/bukti_pembayaran_controller.dart';
import 'package:flutter/material.dart';
import 'package:taternak_v12/core/app_export.dart';
import 'package:taternak_v12/widgets/app_bar/appbar_leading_image.dart';
import 'package:taternak_v12/widgets/app_bar/appbar_subtitle.dart';
import 'package:taternak_v12/widgets/app_bar/custom_app_bar.dart';
import 'package:taternak_v12/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class BuktiPembayaranScreen extends GetWidget<BuktiPembayaranController> {
  const BuktiPembayaranScreen({Key? key})
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
            padding: EdgeInsets.only(top: 62.v),
            child: Container(
              margin: EdgeInsets.only(
                left: 21.h,
                right: 21.h,
                bottom: 5.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 10.h,
                vertical: 22.v,
              ),
              decoration: AppDecoration.outlineBlack9002,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 9.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage26,
                    height: 465.v,
                    width: 303.h,
                  ),
                  SizedBox(height: 36.v),
                  CustomOutlinedButton(
                    height: 42.v,
                    text: "lbl_ok".tr,
                    buttonStyle:
                        CustomButtonStyles.outlineOnErrorContainerTL201,
                    buttonTextStyle: CustomTextStyles.bodyLargeOnErrorContainer,
                  ),
                ],
              ),
            ),
          ),
        ),
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
        text: "msg_bukti_pembayaran".tr,
        margin: EdgeInsets.only(left: 11.h),
      ),
      styleType: Style.bgFill,
    );
  }
}
