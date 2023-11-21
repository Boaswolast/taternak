import '../controller/faq_three_controller.dart';
import '../models/faqthree_item_model.dart';
import 'package:flutter/material.dart';
import 'package:taternak_v12/core/app_export.dart';

// ignore: must_be_immutable
class FaqthreeItemWidget extends StatelessWidget {
  FaqthreeItemWidget(
    this.faqthreeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FaqthreeItemModel faqthreeItemModelObj;

  var controller = Get.find<FaqThreeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillGray,
      child: Column(
        children: [
          Divider(
            color: appTheme.gray30003,
          ),
          SizedBox(height: 21.v),
          Padding(
            padding: EdgeInsets.only(
              left: 40.h,
              right: 33.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    faqthreeItemModelObj.apaItuTaTernak!.value,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5.v),
                  child: Obx(
                    () => Text(
                      faqthreeItemModelObj.text!.value,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 18.v),
        ],
      ),
    );
  }
}
