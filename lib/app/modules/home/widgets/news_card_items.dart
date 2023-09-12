import 'package:flutter/material.dart';
import 'package:getx_template/app/core/base/base_widget_mixin.dart';
import 'package:getx_template/app/core/values/values.dart';
import 'package:getx_template/app/modules/home/models/articles_ui_data.dart';

class NewsCardItem extends StatelessWidget with BaseWidgetMixin {
  NewsCardItem({required this.dataModel, Key? key}) : super(key: key);

  final ArticlesUiData dataModel;

  @override
  Widget body(BuildContext context) {
    return Container(
      width: 220,
      constraints: BoxConstraints(maxHeight: 340),
      margin:
          EdgeInsets.fromLTRB(AppValues.margin_16, 0, 0, AppValues.margin_16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppValues.radius_16),
        boxShadow: [
          BoxShadow(
            color: AppColors.elevatedContainerColorOpacity,
            blurRadius: 4,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          if (dataModel.urlToImage != null)
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(AppValues.radius_16),
                topRight: Radius.circular(AppValues.radius_16),
              ),
              child: Image.network(
                dataModel.urlToImage ?? '', // Replace with your image URL
                height: 140,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          Container(
            padding: const EdgeInsets.all(AppValues.padding_10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  dataModel.title ?? '',
                  maxLines: 4,
                  style: AppTextStyles.blackBold16,
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 5),
                Text(
                  dataModel.publishedAt ?? '',
                  style: AppTextStyles.blackRegular14,
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 5),
                Text(
                  dataModel.content ?? '',
                  style: AppTextStyles.blackRegular12,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
