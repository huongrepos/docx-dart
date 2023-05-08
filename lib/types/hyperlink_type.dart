enum HyperlinkType {
  anchor,
  external,
}

extension HyperlinkTypeExtension on HyperlinkType {
  String toDisplayString() {
    switch (this) {
      case HyperlinkType.anchor:
        return 'anchor';
      case HyperlinkType.external:
        return 'external';
      default:
        return '';
    }
  }
}

HyperlinkType toHyperlinkType(String value) {
  switch (value) {
    case 'anchor':
      return HyperlinkType.anchor;
    case 'external':
      return HyperlinkType.external;
    default:
      return HyperlinkType.anchor;
  }
}