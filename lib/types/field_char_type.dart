enum FieldCharType {
  begin,
  separate,
  end,
  unsupported,
}

extension FieldCharTypeExtension on FieldCharType {
  String toDisplayString() {
    switch (this) {
      case FieldCharType.begin:
        return 'begin';
      case FieldCharType.separate:
        return 'separate';
      case FieldCharType.end:
        return 'end';
      case FieldCharType.unsupported:
        return 'unsupported';
      default:
        return '';
    }
  }
}

extension StringExtension on String {
  FieldCharType toFieldCharType() {
    switch (this) {
      case 'begin':
        return FieldCharType.begin;
      case 'separate':
        return FieldCharType.separate;
      case 'end':
        return FieldCharType.end;
      default:
        return FieldCharType.unsupported;
    }
  }
}