import 'package:flutter/material.dart';
import 'package:getx_template/app/core/base/base_view.dart';
import 'package:getx_template/app/core/widgets/primary_app_bar.dart';
import 'package:getx_template/app/modules/favorite/controller/favorite_controller.dart';

class FavoriteView extends BaseView<FavoriteController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return PrimaryAppBar(appBarTitle: "Favorite");
    ;
  }

  @override
  Widget body(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Favorite"),
      ),
    );
  }
}
