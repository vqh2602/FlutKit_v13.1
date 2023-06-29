enum FxDisplayType {
  none("none"),
  block("block");

  const FxDisplayType(this.className);

  bool get isBlock => this == FxDisplayType.block;

  final String className;

  static FxDisplayType fromString(String text) {
    return text == FxDisplayType.none.className
        ? FxDisplayType.none
        : FxDisplayType.block;
  }
}
