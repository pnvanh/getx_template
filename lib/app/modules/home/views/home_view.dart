import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx_template/app/core/base/base_view.dart';
import 'package:getx_template/app/core/values/values.dart';
import 'package:getx_template/app/core/widgets/primary_app_bar.dart';
import 'package:getx_template/app/modules/home/home.dart';
import 'package:getx_template/app/modules/home/widgets/news_card_items.dart';

class HomeView extends BaseView<HomeController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return PrimaryAppBar(appBarTitle: "Home");
  }

  @override
  Widget body(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppValues.padding_16),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: AppValues.padding_12),
                child: Text(
                  'Top news',
                  style: AppTextStyles.blackBold22,
                ),
              )
            ],
          ),
        ),
        Obx(
          () => SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                controller.articlesList.length,
                (index) =>
                    NewsCardItem(dataModel: controller.articlesList[index]),
              ),
            ),
          ),
        )
      ],
    );
  }
}
