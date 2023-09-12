import 'package:flutter/material.dart';
import 'package:getx_template/app/core/values/values.dart';

class PrimaryAppBar extends StatelessWidget with PreferredSizeWidget {
  const PrimaryAppBar({
    Key? key,
    required this.appBarTitle,
    this.actions,
    this.isBackButtonEnabled = true,
  }) : super(key: key);

  final String appBarTitle;
  final bool isBackButtonEnabled;
  final List<Widget>? actions;

  @override
  Size get preferredSize => AppBar().preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      bottomOpacity: 0,
      centerTitle: false,
      automaticallyImplyLeading: isBackButtonEnabled,
      iconTheme: const IconThemeData(color: AppColors.appBarIconColor),
      actions: actions,
      title: Text(
        appBarTitle,
        style: AppTextStyles.blackBold18,
        textAlign: TextAlign.left,
      ),
    );
  }
}
