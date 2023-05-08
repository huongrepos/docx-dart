enum TabLeaderType {
  dot,
  heavy,
  hyphen,
  middleDot,
  none,
  underscore,
}

extension TabLeaderTypeExtension on TabLeaderType {
  String get name {
    switch (this) {
      case TabLeaderType.dot:
        return 'dot';
      case TabLeaderType.heavy:
        return 'heavy';
      case TabLeaderType.hyphen:
        return 'hyphen';
      case TabLeaderType.middleDot:
        return 'middleDot';
      case TabLeaderType.none:
        return 'none';
      case TabLeaderType.underscore:
        return 'underscore';
    }
  }
}

class TabLeaderTypeParser {
  static TabLeaderType parse(String s) {
    switch (s) {
      case 'dot':
        return TabLeaderType.dot;
      case 'heavy':
        return TabLeaderType.heavy;
      case 'hyphen':
        return TabLeaderType.hyphen;
      case 'middleDot':
        return TabLeaderType.middleDot;
      case 'none':
        return TabLeaderType.none;
      case 'underscore':
        return TabLeaderType.underscore;
      default:
        throw ArgumentError('Invalid TabLeaderType: $s');
    }
  }
}

extension TabLeaderTypeDisplay on TabLeaderType {
  String get display {
    switch (this) {
      case TabLeaderType.dot:
        return 'dot';
      case TabLeaderType.heavy:
        return 'heavy';
      case TabLeaderType.hyphen:
        return 'hyphen';
      case TabLeaderType.middleDot:
        return 'middle dot';
      case TabLeaderType.none:
        return 'none';
      case TabLeaderType.underscore:
        return 'underscore';
    }
  }
}