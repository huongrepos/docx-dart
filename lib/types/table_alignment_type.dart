enum TableAlignmentType {
  center,
  left,
  right,
}

extension TableAlignmentTypeExtension on TableAlignmentType {
  String get name {
    switch (this) {
      case TableAlignmentType.center:
        return 'center';
      case TableAlignmentType.left:
        return 'left';
      case TableAlignmentType.right:
        return 'right';
    }
  }
}

class TableAlignmentTypeParser {
  static TableAlignmentType parse(String s) {
    switch (s) {
      case 'start':
      case 'left':
        return TableAlignmentType.left;
      case 'end':
      case 'right':
        return TableAlignmentType.right;
      case 'center':
        return TableAlignmentType.center;
      default:
        return TableAlignmentType.left;
    }
  }
}

extension TableAlignmentTypeDisplay on TableAlignmentType {
  String get display {
    switch (this) {
      case TableAlignmentType.center:
        return 'center';
      case TableAlignmentType.left:
        return 'left';
      case TableAlignmentType.right:
        return 'right';
    }
  }
}