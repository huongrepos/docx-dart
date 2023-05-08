enum VMergeType {
  continueMerge,
  restartMerge,
  unsupported,
}

extension VMergeTypeExtension on VMergeType {
  String get name {
    switch (this) {
      case VMergeType.continueMerge:
        return 'continue';
      case VMergeType.restartMerge:
        return 'restart';
      case VMergeType.unsupported:
        return 'unsupported';
    }
  }
}

class VMergeTypeParser {
  static VMergeType parse(String s) {
    switch (s) {
      case 'continue':
        return VMergeType.continueMerge;
      case 'restart':
        return VMergeType.restartMerge;
      default:
        return VMergeType.unsupported;
    }
  }
}

extension VMergeTypeDisplay on VMergeType {
  String get display {
    switch (this) {
      case VMergeType.continueMerge:
        return 'continue';
      case VMergeType.restartMerge:
        return 'restart';
      case VMergeType.unsupported:
        return 'unsupported';
    }
  }
}