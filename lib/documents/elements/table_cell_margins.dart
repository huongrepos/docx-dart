import '../../types/mod.dart';
import '../../xml_builder/mod.dart';
import '../build_xml.dart';
class CellMargin {
  final int val;
  final WidthType widthType;

  const CellMargin({
    required this.val,
    required this.widthType,
  });

  factory CellMargin.defaultMargin() => CellMargin(
  val: 55,
  widthType: WidthType.dxa,
  );
}

class TableCellMargins implements BuildXML{
  late CellMargin top;
  late CellMargin left;
  late CellMargin bottom;
  late CellMargin right;

  TableCellMargins({
    required this.top,
    required this.left,
    required this.bottom,
    required this.right,
  });

  factory TableCellMargins.defaultMargins() => TableCellMargins(
    top: CellMargin(
      val: 0,
      widthType: WidthType.dxa,
    ),
    left: CellMargin.defaultMargin(),
    bottom: CellMargin(
      val: 0,
      widthType: WidthType.dxa,
    ),
    right: CellMargin.defaultMargin(),
  );

  TableCellMargins margin(int top, int right, int bottom, int left) {
    return TableCellMargins(
      top: CellMargin(val: top, widthType: WidthType.dxa),
      right: CellMargin(val: right, widthType: WidthType.dxa),
      bottom: CellMargin(val: bottom, widthType: WidthType.dxa),
      left: CellMargin(val: left, widthType: WidthType.dxa),
    );
  }

  TableCellMargins setMarginTop(int v, WidthType t) {
    return TableCellMargins(
      top: CellMargin(val: v, widthType: t),
      left: left,
      bottom: bottom,
      right: right,
    );
  }

  TableCellMargins setMarginRight(int v, WidthType t) {
    return TableCellMargins(
      top: top,
      left: left,
      bottom: bottom,
      right: CellMargin(val: v, widthType: t),
    );
  }

  TableCellMargins setMarginLeft(int v, WidthType t) {
    return TableCellMargins(
      top: top,
      left: CellMargin(val: v, widthType: t),
      bottom: bottom,
      right: right,
    );
  }

  TableCellMargins setMarginBottom(int v, WidthType t) {
    return TableCellMargins(
      top: top,
      left: left,
      bottom: CellMargin(val: v, widthType: t),
      right: right,
    );
  }
  @override
  String build() {
    return XMLBuilder().openTableCellMargins()
        .marginTop(top.val, top.widthType.name)
        .marginLeft(left.val, left.widthType.name)
        .marginBottom(bottom.val, bottom.widthType.name)
        .marginRight(right.val, right.widthType.name)
        .close().build();
  }
}
// void main() {
//   final builder = TableCellMargins.defaultMargins().margin(10,20,30,40);
//   print(builder.build());
// }