enum TabValueType {
  bar,
  center,
  clear,
  decimal,
  end,
  right,
  num,
  start,
  left,
}

extension TabValueTypeExtension on TabValueType {
  String get name {
    switch (this) {
      case TabValueType.bar:
        return 'bar';
      case TabValueType.center:
        return 'center';
      case TabValueType.clear:
        return 'clear';
      case TabValueType.decimal:
        return 'decimal';
      case TabValueType.end:
        return 'end';
      case TabValueType.right:
        return 'right';
      case TabValueType.num:
        return 'num';
      case TabValueType.start:
        return 'start';
      case TabValueType.left:
        return 'left';
    }
  }
}

class TabValueTypeParser {
  static TabValueType parse(String s) {
    switch (s) {
      case 'bar':
        return TabValueType.bar;
      case 'center':
        return TabValueType.center;
      case 'clear':
        return TabValueType.clear;
      case 'decimal':
        return TabValueType.decimal;
      case 'end':
        return TabValueType.end;
      case 'right':
        return TabValueType.right;
      case 'num':
        return TabValueType.num;
      case 'start':
        return TabValueType.start;
      case 'left':
        return TabValueType.left;
      default:
        throw ArgumentError('Invalid TabValueType: $s');
    }
  }
}

extension TabValueTypeDisplay on TabValueType {
  String get display {
    switch (this) {
      case TabValueType.bar:
        return 'bar';
      case TabValueType.center:
        return 'center';
      case TabValueType.clear:
        return 'clear';
      case TabValueType.decimal:
        return 'decimal';
      case TabValueType.end:
        return 'end';
      case TabValueType.right:
        return 'right';
      case TabValueType.num:
        return 'num';
      case TabValueType.start:
        return 'start';
      case TabValueType.left:
        return 'left';
    }
  }
}