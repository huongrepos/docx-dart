enum TableLayoutType {
  fixed,
  autofit,
}

extension TableLayoutTypeExtension on TableLayoutType {
  String get name {
    switch (this) {
      case TableLayoutType.fixed:
        return 'fixed';
      case TableLayoutType.autofit:
        return 'autofit';
    }
  }
}

class TableLayoutTypeParser {
  static TableLayoutType parse(String s) {
    switch (s) {
      case 'fixed':
        return TableLayoutType.fixed;
      default:
        return TableLayoutType.autofit;
    }
  }
}

extension TableLayoutTypeDisplay on TableLayoutType {
  String get display {
    switch (this) {
      case TableLayoutType.fixed:
        return 'fixed';
      case TableLayoutType.autofit:
        return 'autofit';
    }
  }
}