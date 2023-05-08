enum LevelSuffixType {
  nothing,
  space,
  tab,
}

extension LevelSuffixTypeExtension on LevelSuffixType {
  String toDisplayString() {
    switch (this) {
      case LevelSuffixType.nothing:
        return 'nothing';
      case LevelSuffixType.space:
        return 'space';
      case LevelSuffixType.tab:
        return 'tab';
      default:
        return '';
    }
  }
}

LevelSuffixType toLevelSuffixType(String value) {
  switch (value) {
    case 'nothing':
      return LevelSuffixType.nothing;
    case 'space':
      return LevelSuffixType.space;
    case 'tab':
      return LevelSuffixType.tab;
    default:
      return LevelSuffixType.tab;
  }
}