enum WidthType {
  dxa,
  auto,
  pct,
  nil,
  unsupported,
}

extension WidthTypeExtension on WidthType {
  String get name {
    switch (this) {
      case WidthType.dxa:
        return 'dxa';
      case WidthType.auto:
        return 'auto';
      case WidthType.pct:
        return 'pct';
      case WidthType.nil:
        return 'nil';
      case WidthType.unsupported:
        return 'unsupported';
    }
  }
}

class WidthTypeParser {
  static WidthType parse(String s) {
    switch (s.toLowerCase()) {
      case 'dxa':
        return WidthType.dxa;
      case 'auto':
        return WidthType.auto;
      case 'pct':
        return WidthType.pct;
      case 'nil':
        return WidthType.nil;
      default:
        return WidthType.unsupported;
    }
  }
}

extension WidthTypeDisplay on WidthType {
  String get display {
    switch (this) {
      case WidthType.dxa:
        return 'dxa';
      case WidthType.auto:
        return 'auto';
      case WidthType.pct:
        return 'pct';
      case WidthType.nil:
        return 'nil';
      case WidthType.unsupported:
        return 'unsupported';
    }
  }
}