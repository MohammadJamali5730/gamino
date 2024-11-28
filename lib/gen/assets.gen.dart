/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $ImagesGen {
  const $ImagesGen();

  /// File path: images/Controller.png
  AssetGenImage get controller => const AssetGenImage('images/Controller.png');

  /// File path: images/LoginIMG.png
  AssetGenImage get loginIMG => const AssetGenImage('images/LoginIMG.png');

  /// File path: images/Logo.png
  AssetGenImage get logo => const AssetGenImage('images/Logo.png');

  /// File path: images/MainIMG.png
  AssetGenImage get mainIMG => const AssetGenImage('images/MainIMG.png');

  /// File path: images/Mobile.png
  AssetGenImage get mobile => const AssetGenImage('images/Mobile.png');

  /// File path: images/SmartWatch.png
  AssetGenImage get smartWatch => const AssetGenImage('images/SmartWatch.png');

  /// File path: images/TV.png
  AssetGenImage get tv => const AssetGenImage('images/TV.png');

  /// File path: images/bxs_up-arrow-alt.png
  AssetGenImage get bxsUpArrowAlt =>
      const AssetGenImage('images/bxs_up-arrow-alt.png');

  /// File path: images/solar_logout-2-outline.png
  AssetGenImage get solarLogout2Outline =>
      const AssetGenImage('images/solar_logout-2-outline.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        controller,
        loginIMG,
        logo,
        mainIMG,
        mobile,
        smartWatch,
        tv,
        bxsUpArrowAlt,
        solarLogout2Outline
      ];
}

class Assets {
  Assets._();

  static const $ImagesGen images = $ImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
    bool gaplessPlayback = true,
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
