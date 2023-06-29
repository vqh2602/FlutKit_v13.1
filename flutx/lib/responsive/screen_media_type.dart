enum FxScreenMediaType {
  xs(576, "xs"), //Mobile
  sm(768, "sm"), //Tablet
  md(1200, "md"), //Laptop
  lg(1400, "lg"), //Desktop
  xl(1800, "xl"), //Large Desktop
  xxl(4000, "xxl"); //Extra Large Desktop

  bool get isMobile => this == FxScreenMediaType.xs;

  bool get isTablet => this == FxScreenMediaType.sm;

  bool get isLaptop => this == FxScreenMediaType.md;

  bool get isMiniDesktop => this == FxScreenMediaType.lg;

  bool get isDesktop => this == FxScreenMediaType.xl;

  static List<FxScreenMediaType> list = [
    FxScreenMediaType.xs,
    FxScreenMediaType.sm,
    FxScreenMediaType.md,
    FxScreenMediaType.lg,
    FxScreenMediaType.xl,
    FxScreenMediaType.xxl
  ];

  const FxScreenMediaType(this.width, this.className);

  final double width;

  final String className;
}
