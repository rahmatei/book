/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/add.svg
  SvgGenImage get add => const SvgGenImage('assets/icons/add.svg');

  /// File path: assets/icons/clarity_notification_outline_badged.svg
  SvgGenImage get clarityNotificationOutlineBadged =>
      const SvgGenImage('assets/icons/clarity_notification_outline_badged.svg');

  /// File path: assets/icons/fluent_book-20-filled.svg
  SvgGenImage get fluentBook20Filled =>
      const SvgGenImage('assets/icons/fluent_book-20-filled.svg');

  /// File path: assets/icons/fluent_book-selected.svg
  SvgGenImage get fluentBookSelected =>
      const SvgGenImage('assets/icons/fluent_book-selected.svg');

  /// File path: assets/icons/fluent_people-community-16-filled.svg
  SvgGenImage get fluentPeopleCommunity16Filled =>
      const SvgGenImage('assets/icons/fluent_people-community-16-filled.svg');

  /// File path: assets/icons/fluent_people-community-selected.svg
  SvgGenImage get fluentPeopleCommunitySelected =>
      const SvgGenImage('assets/icons/fluent_people-community-selected.svg');

  /// File path: assets/icons/ion_library.svg
  SvgGenImage get ionLibrary =>
      const SvgGenImage('assets/icons/ion_library.svg');

  /// File path: assets/icons/ion_library_selected.svg
  SvgGenImage get ionLibrarySelected =>
      const SvgGenImage('assets/icons/ion_library_selected.svg');

  /// File path: assets/icons/lib1.png
  AssetGenImage get lib1Png => const AssetGenImage('assets/icons/lib1.png');

  /// File path: assets/icons/lib1.svg
  SvgGenImage get lib1Svg => const SvgGenImage('assets/icons/lib1.svg');

  /// File path: assets/icons/lib2.svg
  SvgGenImage get lib2 => const SvgGenImage('assets/icons/lib2.svg');

  /// File path: assets/icons/mdi_bell_notification.svg
  SvgGenImage get mdiBellNotification =>
      const SvgGenImage('assets/icons/mdi_bell_notification.svg');

  /// File path: assets/icons/mdi_cart-variant.svg
  SvgGenImage get mdiCartVariant =>
      const SvgGenImage('assets/icons/mdi_cart-variant.svg');

  /// File path: assets/icons/mdi_cart-variant_selected.svg
  SvgGenImage get mdiCartVariantSelected =>
      const SvgGenImage('assets/icons/mdi_cart-variant_selected.svg');

  /// File path: assets/icons/menu.svg
  SvgGenImage get menu => const SvgGenImage('assets/icons/menu.svg');

  /// File path: assets/icons/plus.svg
  SvgGenImage get plus => const SvgGenImage('assets/icons/plus.svg');

  /// File path: assets/icons/rectangle1.png
  AssetGenImage get rectangle1 =>
      const AssetGenImage('assets/icons/rectangle1.png');

  /// File path: assets/icons/ri_search_line.svg
  SvgGenImage get riSearchLine =>
      const SvgGenImage('assets/icons/ri_search_line.svg');

  /// File path: assets/icons/scan_dash.svg
  SvgGenImage get scanDash => const SvgGenImage('assets/icons/scan_dash.svg');

  /// File path: assets/icons/star.svg
  SvgGenImage get star => const SvgGenImage('assets/icons/star.svg');

  /// File path: assets/icons/starfiled.svg
  SvgGenImage get starfiled => const SvgGenImage('assets/icons/starfiled.svg');

  /// File path: assets/icons/wishlist1.png
  AssetGenImage get wishlist1 =>
      const AssetGenImage('assets/icons/wishlist1.png');

  /// File path: assets/icons/wishlist2.png
  AssetGenImage get wishlist2 =>
      const AssetGenImage('assets/icons/wishlist2.png');

  /// List of all assets
  List<dynamic> get values => [
        add,
        clarityNotificationOutlineBadged,
        fluentBook20Filled,
        fluentBookSelected,
        fluentPeopleCommunity16Filled,
        fluentPeopleCommunitySelected,
        ionLibrary,
        ionLibrarySelected,
        lib1Png,
        lib1Svg,
        lib2,
        mdiBellNotification,
        mdiCartVariant,
        mdiCartVariantSelected,
        menu,
        plus,
        rectangle1,
        riSearchLine,
        scanDash,
        star,
        starfiled,
        wishlist1,
        wishlist2
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
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
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
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
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
