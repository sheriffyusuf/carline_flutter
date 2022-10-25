import 'package:carline_flutter/gen/colors.gen.dart';
import 'package:flutter/material.dart';

InputDecoration inputDecoration(
    {String? hintText,
    Widget? prefixIcon,
    Widget? suffixIcon,
    String? labelText,
    bool isDense = true,
    bool addVPadding = false}) {
  return InputDecoration(
    alignLabelWithHint: true,
    contentPadding: EdgeInsets.symmetric(
        horizontal: 16, vertical: addVPadding ? 16.0 : 16.0),
    filled: true,
    fillColor: AppColor.gray50,
    prefixIcon: prefixIcon,
    suffixIcon: suffixIcon,
    //  isDense: isDense,
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4.0), borderSide: BorderSide.none
        /* borderSide: const BorderSide(
          color: Color(0xFFD1D2D8),
        ) */
        ),
    disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.0),
        borderSide: const BorderSide(
          color: Color(0xFFD1D2D8),
        )),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.0),
        borderSide: const BorderSide(
          color: AppColor.primary,
        )),
    errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.0),
        borderSide: const BorderSide(
          color: Colors.red,
        )),

    focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.0),
        borderSide: const BorderSide(
          color: Colors.red,
        )),
    hintText: hintText,
    labelText: labelText,

    //labelStyle:
    //  const TextStyle(color: AppColor.gray400, height: 1.65, fontSize: 20),
    hintStyle: const TextStyle(color: AppColor.gray400, height: 1.65),
  );
}
