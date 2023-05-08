enum SectionType {
  nextPage,
  nextColumn,
  continuous,
  evenPage,
  oddPage,
}

extension SectionTypeExtension on SectionType {
  String toStringValue() {
    switch (this) {
      case SectionType.nextPage:
        return 'nextPage';
      case SectionType.nextColumn:
        return 'nextColumn';
      case SectionType.continuous:
        return 'continuous';
      case SectionType.evenPage:
        return 'evenPage';
      case SectionType.oddPage:
        return 'oddPage';
      default:
        return '';
    }
  }
}

SectionType toSectionType(String value) {
  switch (value) {
    case 'nextPage':
      return SectionType.nextPage;
    case 'nextColumn':
      return SectionType.nextColumn;
    case 'continuous':
      return SectionType.continuous;
    case 'evenPage':
      return SectionType.evenPage;
    case 'oddPage':
      return SectionType.oddPage;
    default:
      return SectionType.continuous;
  }
}

extension SectionTypeDisplay on SectionType {
  String display() {
    switch (this) {
      case SectionType.nextPage:
        return 'nextPage';
      case SectionType.nextColumn:
        return 'nextColumn';
      case SectionType.continuous:
        return 'continuous';
      case SectionType.evenPage:
        return 'evenPage';
      case SectionType.oddPage:
        return 'oddPage';
      default:
        return '';
    }
  }
}

SectionType fromSectionTypeString(String value) {
  switch (value) {
    case 'nextPage':
      return SectionType.nextPage;
    case 'nextColumn':
      return SectionType.nextColumn;
    case 'continuous':
      return SectionType.continuous;
    case 'evenPage':
      return SectionType.evenPage;
    case 'oddPage':
      return SectionType.oddPage;
    default:
      return SectionType.continuous;
  }
}
