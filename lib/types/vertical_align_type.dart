enum VAlignType {
  top,
  center,
  bottom,
  unsupported,
}

extension VAlignTypeExtension on VAlignType {
  String get name {
    switch (this) {
      case VAlignType.top:
        return 'top';
      case VAlignType.center:
        return 'center';
      case VAlignType.bottom:
        return 'bottom';
      case VAlignType.unsupported:
        return 'unsupported';
    }
  }
}

class VAlignTypeParser {
  static VAlignType parse(String s) {
    switch (s) {
      case 'top':
        return VAlignType.top;
      case 'center':
        return VAlignType.center;
      case 'bottom':
        return VAlignType.bottom;
      default:
        return VAlignType.unsupported;
    }
  }
}

extension VAlignTypeDisplay on VAlignType {
  String get display {
    switch (this) {
      case VAlignType.top:
        return 'top';
      case VAlignType.center:
        return 'center';
      case VAlignType.bottom:
        return 'bottom';
      case VAlignType.unsupported:
        return 'unsupported';
    }
  }
}