import 'package:carline_flutter/gen/colors.gen.dart';
import 'package:flutter/material.dart' hide CircleBorder;

extension WidgetExtension on Widget {
  /// Add circleborder widget around child
  Widget circledBorder({Color? color}) {
    return Container(
        // padding: EdgeInsets.all(4.0),
        padding: const EdgeInsets.all(10.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border.all(color: AppColor.gray200),
            borderRadius: BorderRadius.circular(12)
            //   border: Border.all(color: color ?? ColorName.black5),
            ),
        child: this);

    /*  return CircleBorder(
      child: this,
      color: color,
    ); */
  }

  /// set parent widget in center
  Widget center({double? heightFactor, double? widthFactor}) {
    return Center(
      heightFactor: heightFactor,
      widthFactor: widthFactor,
      child: this,
    );
  }
}
