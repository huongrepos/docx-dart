enum HeightRule {
  auto,
  atLeast,
  exact,
}

extension HeightRuleExtension on HeightRule {
  String toValue() {
    switch (this) {
      case HeightRule.auto:
        return 'auto';
      case HeightRule.atLeast:
        return 'atLeast';
      case HeightRule.exact:
        return 'exact';
    }
  }
}

HeightRule heightRuleFromString(String value) {
  switch (value) {
    case 'auto':
      return HeightRule.auto;
    case 'atLeast':
      return HeightRule.atLeast;
    case 'exact':
      return HeightRule.exact;
    default:
      return HeightRule.atLeast;
  }
}