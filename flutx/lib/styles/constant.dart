import 'package:flutx/flutx.dart';

class FxConstantData {
  final double containerRadius;
  final double cardRadius;
  final double buttonRadius;

  final FxBreadcrumbItem? defaultBreadCrumbItem;

  FxConstantData(
      {this.containerRadius = 4, this.cardRadius = 4, this.buttonRadius = 4, this.defaultBreadCrumbItem});
}

class FxConstant {
  static FxConstantData _constant = FxConstantData();

  static FxConstantData get constant => _constant;

  static setConstant(FxConstantData constantData) {
    _constant = constantData;
  }
}
