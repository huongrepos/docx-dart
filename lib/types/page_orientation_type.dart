enum PageOrientationType {
  landscape,
  portrait,
}

String toDisplayString(PageOrientationType value) {
  switch (value) {
    case PageOrientationType.landscape:
      return 'landscape';
    case PageOrientationType.portrait:
      return 'portrait';
    default:
      return '';
  }
}

PageOrientationType toPageOrientationType(String value) {
  switch (value) {
    case 'landscape':
      return PageOrientationType.landscape;
    case 'portrait':
      return PageOrientationType.portrait;
    default:
      return PageOrientationType.portrait;
  }
}