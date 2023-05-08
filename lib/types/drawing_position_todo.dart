enum DrawingPositionType {
  anchor,
  inline,
}

enum PicAlign {
  left,
  right,
  center,
  bottom,
  top,
}

String picAlignToString(PicAlign picAlign) {
  switch (picAlign) {
    case PicAlign.left:
      return 'left';
    case PicAlign.right:
      return 'right';
    case PicAlign.center:
      return 'center';
    case PicAlign.bottom:
      return 'bottom';
    case PicAlign.top:
      return 'top';
  }
}

// enum DrawingPosition {
//   offset(int),
//   align(PicAlign)
// }