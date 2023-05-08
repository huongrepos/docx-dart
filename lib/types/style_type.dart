enum StyleType {
  paragraph,
  character,
  numbering,
  table,
  unsupported,
}

extension StyleTypeExtension on StyleType {
  String get name {
    switch (this) {
      case StyleType.paragraph:
        return 'paragraph';
      case StyleType.character:
        return 'character';
      case StyleType.numbering:
        return 'numbering';
      case StyleType.table:
        return 'table';
      case StyleType.unsupported:
        return 'unsupported';
    }
  }
}

class StyleTypeParser {
  static StyleType parse(String s) {
    switch (s) {
      case 'paragraph':
        return StyleType.paragraph;
      case 'character':
        return StyleType.character;
      case 'numbering':
        return StyleType.numbering;
      case 'table':
        return StyleType.table;
      default:
        return StyleType.unsupported;
    }
  }
}

extension StyleTypeDisplay on StyleType {
  String get display {
    switch (this) {
      case StyleType.paragraph:
        return 'paragraph';
      case StyleType.character:
        return 'character';
      case StyleType.numbering:
        return 'numbering';
      case StyleType.table:
        return 'table';
      case StyleType.unsupported:
        return 'unsupported';
    }
  }
}