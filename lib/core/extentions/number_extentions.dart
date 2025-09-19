import 'package:flutter/cupertino.dart';

extension NumberExtensions on num {
  /// Returns a SizedBox with given height
  Widget get vSpace => SizedBox(height: toDouble());

  /// Returns a SizedBox with given width
  Widget get hSpace => SizedBox(width: toDouble());

  String get toPriceFormat {
    return toStringAsFixed(0).replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
      (Match m) => '${m[1]} ',
    );
  }
}
