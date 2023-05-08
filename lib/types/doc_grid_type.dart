enum DocGridType {
  defaultType,
  lines,
  linesAndChars,
  snapToChars,
}

String docGridTypeToString(DocGridType docGridType) {
  switch (docGridType) {
    case DocGridType.defaultType:
      return 'default';
    case DocGridType.lines:
      return 'lines';
    case DocGridType.linesAndChars:
      return 'linesAndChars';
    case DocGridType.snapToChars:
      return 'snapToChars';
    default:
      return '';
  }
}

DocGridType docGridTypeFromString(String s) {
  switch (s) {
    case 'default':
      return DocGridType.defaultType;
    case 'lines':
      return DocGridType.lines;
    case 'linesAndChars':
      return DocGridType.linesAndChars;
    case 'snapToChars':
      return DocGridType.snapToChars;
    default:
      throw FormatException('Unknown DocGridType: $s');
  }
}