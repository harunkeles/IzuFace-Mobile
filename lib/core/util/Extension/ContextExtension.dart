import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  double get infinityWidth => MediaQuery.of(this).size.width;
  double get infinityHeight => MediaQuery.of(this).size.height;
  double dynamicWidth(double val) => MediaQuery.of(this).size.width * val;
  double dynamicHeight(double val) => MediaQuery.of(this).size.height * val;
}

extension NumberExtension on BuildContext {
  //* Height
  double get lowValueHeight => dynamicHeight(0.01);
  double get mediumValueHeight => dynamicHeight(0.02);
  double get highValueHeight => dynamicHeight(0.03);

  //* Width
  double get lowValueWidth => dynamicWidth(0.01);
  double get mediumValueWidth => dynamicWidth(0.02);
  double get highValueWidth => dynamicWidth(0.03);
}

extension PaddingExtension on BuildContext {
  EdgeInsets get lowPaddingAllow => EdgeInsets.all(lowValueWidth);
  EdgeInsets get mediumPaddingAllow => EdgeInsets.all(mediumValueWidth);
  EdgeInsets get highPaddingAllow => EdgeInsets.all(highValueWidth);
}

extension InitialLocalDate on BuildContext {
 String get languageCode => Localizations.localeOf(this).languageCode;
}