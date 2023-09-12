import 'package:flutter/material.dart';
import 'package:getx_template/app/core/values/values.dart';

class ElevatedContainer extends StatelessWidget {
  final Widget child;
  final Color bgColor;
  final EdgeInsetsGeometry? padding;
  final BorderRadius? borderRadius;

  const ElevatedContainer({
    Key? key,
    required this.child,
    this.bgColor = AppColors.pageBackground,
    this.padding,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
          borderRadius:
              borderRadius ?? BorderRadius.circular(AppValues.radius_8),
          boxShadow: [
            BoxShadow(
              color: AppColors.elevatedContainerColorOpacity,
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          color: AppColors.pageBackground),
      child: child,
    );
  }
}
