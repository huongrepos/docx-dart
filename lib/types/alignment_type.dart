enum AlignmentType {
  both,
  center,
  distribute,
  start,
  end,
  left,
  right,
  justified,
  unsupported,
}

extension AlignmentTypeExtension on AlignmentType {
  String toValue() {
    switch (this) {
      case AlignmentType.both:
        return 'both';
      case AlignmentType.center:
        return 'center';
      case AlignmentType.distribute:
        return 'distribute';
      case AlignmentType.start:
        return 'start';
      case AlignmentType.end:
        return 'end';
      case AlignmentType.left:
        return 'left';
      case AlignmentType.right:
        return 'right';
      case AlignmentType.justified:
        return 'justified';
      case AlignmentType.unsupported:
        return 'unsupported';
    }
  }
}

AlignmentType alignmentTypeFromString(String value) {
  switch (value) {
    case 'both':
      return AlignmentType.both;
    case 'center':
      return AlignmentType.center;
    case 'distribute':
      return AlignmentType.distribute;
    case 'start':
      return AlignmentType.start;
    case 'end':
      return AlignmentType.end;
    case 'left':
      return AlignmentType.left;
    case 'right':
      return AlignmentType.right;
    case 'justified':
      return AlignmentType.justified;
    default:
      return AlignmentType.unsupported;
  }
}