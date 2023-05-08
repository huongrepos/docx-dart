enum TextDirectionType {
  lr,
  lrV,
  rl,
  rlV,
  tb,
  tbV,
  tbRlV,
  tbRl,
  btLr,
  lrTbV,
}

extension TextDirectionTypeExtension on TextDirectionType {
  String get name {
    switch (this) {
      case TextDirectionType.lr:
        return 'lr';
      case TextDirectionType.lrV:
        return 'lrV';
      case TextDirectionType.rl:
        return 'rl';
      case TextDirectionType.rlV:
        return 'rlV';
      case TextDirectionType.tb:
        return 'tb';
      case TextDirectionType.tbV:
        return 'tbV';
      case TextDirectionType.tbRlV:
        return 'tbRlV';
      case TextDirectionType.tbRl:
        return 'tbRl';
      case TextDirectionType.btLr:
        return 'btLr';
      case TextDirectionType.lrTbV:
        return 'lrTbV';
    }
  }
}

class TextDirectionTypeParser {
  static TextDirectionType parse(String s) {
    switch (s) {
      case 'lr':
        return TextDirectionType.lr;
      case 'lrV':
        return TextDirectionType.lrV;
      case 'rl':
        return TextDirectionType.rl;
      case 'rlV':
        return TextDirectionType.rlV;
      case 'tb':
        return TextDirectionType.tb;
      case 'tbV':
        return TextDirectionType.tbV;
      case 'tbRlV':
        return TextDirectionType.tbRlV;
      case 'tbRl':
        return TextDirectionType.tbRl;
      case 'btLr':
        return TextDirectionType.btLr;
      case 'lrTbV':
        return TextDirectionType.lrTbV;
      default:
        throw ArgumentError('Invalid TextDirectionType: $s');
    }
  }
}

extension TextDirectionTypeDisplay on TextDirectionType {
  String get display {
    switch (this) {
      case TextDirectionType.lr:
        return 'lr';
      case TextDirectionType.lrV:
        return 'lrV';
      case TextDirectionType.rl:
        return 'rl';
      case TextDirectionType.rlV:
        return 'rlV';
      case TextDirectionType.tb:
        return 'tb';
      case TextDirectionType.tbV:
        return 'tbV';
      case TextDirectionType.tbRlV:
        return 'tbRlV';
      case TextDirectionType.tbRl:
        return 'tbRl';
      case TextDirectionType.btLr:
        return 'btLr';
      case TextDirectionType.lrTbV:
        return 'lrTbV';
    }
  }
}