enum FontPitchType {
  defaultType,
  fixed,
  variable,
}

extension FontPitchTypeExtension on FontPitchType {
  String toDisplayString() {
    switch (this) {
      case FontPitchType.defaultType:
        return 'default';
      case FontPitchType.fixed:
        return 'fixed';
      case FontPitchType.variable:
        return 'variable';
      default:
        return '';
    }
  }
}