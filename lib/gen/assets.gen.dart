/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/audi.png
  AssetGenImage get audi => const AssetGenImage('assets/images/audi.png');

  /// File path: assets/images/car_one.png
  AssetGenImage get carOne => const AssetGenImage('assets/images/car_one.png');

  /// File path: assets/images/car_three.png
  AssetGenImage get carThree =>
      const AssetGenImage('assets/images/car_three.png');

  /// File path: assets/images/car_two.png
  AssetGenImage get carTwo => const AssetGenImage('assets/images/car_two.png');

  /// File path: assets/images/icon_bg.png
  AssetGenImage get iconBg => const AssetGenImage('assets/images/icon_bg.png');

  /// File path: assets/images/jeep.png
  AssetGenImage get jeep => const AssetGenImage('assets/images/jeep.png');

  /// File path: assets/images/quattro.png
  AssetGenImage get quattro => const AssetGenImage('assets/images/quattro.png');

  /// File path: assets/images/test_drive.png
  AssetGenImage get testDrive =>
      const AssetGenImage('assets/images/test_drive.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [audi, carOne, carThree, carTwo, iconBg, jeep, quattro, testDrive];
}

class $AssetsSvgsGen {
  const $AssetsSvgsGen();

  /// File path: assets/svgs/audi_logo.svg
  SvgGenImage get audiLogo => const SvgGenImage('assets/svgs/audi_logo.svg');

  /// File path: assets/svgs/biometric.svg
  SvgGenImage get biometric => const SvgGenImage('assets/svgs/biometric.svg');

  /// File path: assets/svgs/bmw.svg
  SvgGenImage get bmw => const SvgGenImage('assets/svgs/bmw.svg');

  /// File path: assets/svgs/empty_state.svg
  SvgGenImage get emptyState =>
      const SvgGenImage('assets/svgs/empty_state.svg');

  /// File path: assets/svgs/face_id.svg
  SvgGenImage get faceId => const SvgGenImage('assets/svgs/face_id.svg');

  /// File path: assets/svgs/ford.svg
  SvgGenImage get ford => const SvgGenImage('assets/svgs/ford.svg');

  /// File path: assets/svgs/forgot_password.svg
  SvgGenImage get forgotPassword =>
      const SvgGenImage('assets/svgs/forgot_password.svg');

  /// File path: assets/svgs/heart.svg
  SvgGenImage get heart => const SvgGenImage('assets/svgs/heart.svg');

  /// File path: assets/svgs/home.svg
  SvgGenImage get home => const SvgGenImage('assets/svgs/home.svg');

  /// File path: assets/svgs/lambo.svg
  SvgGenImage get lambo => const SvgGenImage('assets/svgs/lambo.svg');

  /// File path: assets/svgs/message.svg
  SvgGenImage get message => const SvgGenImage('assets/svgs/message.svg');

  /// File path: assets/svgs/password_change.svg
  SvgGenImage get passwordChange =>
      const SvgGenImage('assets/svgs/password_change.svg');

  /// File path: assets/svgs/profile.svg
  SvgGenImage get profile => const SvgGenImage('assets/svgs/profile.svg');

  /// File path: assets/svgs/tesla.svg
  SvgGenImage get tesla => const SvgGenImage('assets/svgs/tesla.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        audiLogo,
        biometric,
        bmw,
        emptyState,
        faceId,
        ford,
        forgotPassword,
        heart,
        home,
        lambo,
        message,
        passwordChange,
        profile,
        tesla
      ];
}

class Assets {
  Assets._();

  static const AssetGenImage icon = AssetGenImage('assets/icon.png');
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const AssetGenImage logo = AssetGenImage('assets/logo.png');
  static const $AssetsSvgsGen svgs = $AssetsSvgsGen();

  /// List of all assets
  List<AssetGenImage> get values => [icon, logo];
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
    bool cacheColorFilter = false,
    SvgTheme? theme,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
      theme: theme,
    );
  }

  String get path => _assetName;
}
