enum LineSpacingType {
  auto,
  atLeast,
  exact,
}

LineSpacingType toLineSpacingType(String value) {
  switch (value) {
    case 'auto':
      return LineSpacingType.auto;
    case 'atLeast':
      return LineSpacingType.atLeast;
    case 'exact':
      return LineSpacingType.exact;
    default:
      throw FormatException('Invalid line spacing type');
  }
}