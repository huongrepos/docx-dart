enum BreakType {
  page,
  column,
  textWrapping,
  unsupported,
}

String breakTypeToString(BreakType breakType) {
  switch (breakType) {
    case BreakType.page:
      return 'page';
    case BreakType.column:
      return 'column';
    case BreakType.textWrapping:
      return 'textWrapping';
    case BreakType.unsupported:
    default:
      return 'unsupported';
  }
}

BreakType breakTypeFromString(String s) {
  switch (s) {
    case 'page':
      return BreakType.page;
    case 'column':
      return BreakType.column;
    case 'textWrapping':
      return BreakType.textWrapping;
    default:
      return BreakType.unsupported;
  }
}