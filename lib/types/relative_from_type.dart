enum RelativeFromHType {
  character,
  column,
  insideMargin,
  leftMargin,
  margin,
  outsizeMargin,
  page,
  rightMargin,
}

extension RelativeFromHTypeExtension on RelativeFromHType {
  String toStringValue() {
    switch (this) {
      case RelativeFromHType.character:
        return 'character';
      case RelativeFromHType.column:
        return 'column';
      case RelativeFromHType.insideMargin:
        return 'insideMargin';
      case RelativeFromHType.leftMargin:
        return 'leftMargin';
      case RelativeFromHType.margin:
        return 'margin';
      case RelativeFromHType.outsizeMargin:
        return 'outsizeMargin';
      case RelativeFromHType.page:
        return 'page';
      case RelativeFromHType.rightMargin:
        return 'rightMargin';
      default:
        return '';
    }
  }
}

RelativeFromHType toRelativeFromHType(String value) {
  switch (value) {
    case 'character':
      return RelativeFromHType.character;
    case 'column':
      return RelativeFromHType.column;
    case 'insideMargin':
      return RelativeFromHType.insideMargin;
    case 'leftMargin':
      return RelativeFromHType.leftMargin;
    case 'margin':
      return RelativeFromHType.margin;
    case 'outsizeMargin':
      return RelativeFromHType.outsizeMargin;
    case 'page':
      return RelativeFromHType.page;
    case 'rightMargin':
      return RelativeFromHType.rightMargin;
    default:
      return RelativeFromHType.margin;
  }
}

enum RelativeFromVType {
  bottomMargin,
  insideMargin,
  line,
  margin,
  outsizeMargin,
  page,
  paragraph,
  topMargin,
}

extension RelativeFromVTypeExtension on RelativeFromVType {
  String toStringValue() {
    switch (this) {
      case RelativeFromVType.bottomMargin:
        return 'bottomMargin';
      case RelativeFromVType.insideMargin:
        return 'insideMargin';
      case RelativeFromVType.line:
        return 'line';
      case RelativeFromVType.margin:
        return 'margin';
      case RelativeFromVType.outsizeMargin:
        return 'outsideMargin';
      case RelativeFromVType.page:
        return 'page';
      case RelativeFromVType.paragraph:
        return 'paragraph';
      case RelativeFromVType.topMargin:
        return 'topMargin';
      default:
        return '';
    }
  }
}

RelativeFromVType toRelativeFromVType(String value) {
  switch (value) {
    case 'bottomMargin':
      return RelativeFromVType.bottomMargin;
    case 'insideMargin':
      return RelativeFromVType.insideMargin;
    case 'line':
      return RelativeFromVType.line;
    case 'margin':
      return RelativeFromVType.margin;
    case 'outsizeMargin':
      return RelativeFromVType.outsizeMargin;
    case 'page':
      return RelativeFromVType.page;
    case 'paragraph':
      return RelativeFromVType.paragraph;
    case 'topMargin':
      return RelativeFromVType.topMargin;
    default:
      return RelativeFromVType.margin;
  }
}