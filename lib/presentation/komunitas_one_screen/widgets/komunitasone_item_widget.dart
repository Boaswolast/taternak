import '../controller/komunitas_one_controller.dart';
import '../models/komunitasone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:taternak_v12/core/app_export.dart';

// ignore: must_be_immutable
class KomunitasoneItemWidget extends StatelessWidget {
  KomunitasoneItemWidget(
    this.komunitasoneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  KomunitasoneItemModel komunitasoneItemModelObj;

  var controller = Get.find<KomunitasOneController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillGray,
      child: Column(
        children: [
          Divider(
            color: appTheme.gray30003,
          ),
          SizedBox(height: 22.v),
          Padding(
            padding: EdgeInsets.only(
              left: 39.h,
              right: 33.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgChatChatBlack900,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(bottom: 3.v),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 17.h),
                  child: Obx(
                    () => Text(
                      komunitasoneItemModelObj.sapi!.value,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(bottom: 5.v),
                  child: Obx(
                    () => Text(
                      komunitasoneItemModelObj.text!.value,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 17.v),
        ],
      ),
    );
  }
}
