import '../../types/mod.dart';
import '../../xml_builder/mod.dart';
import '../build_xml.dart';
class TableCellBorder implements BuildXML{
  late BorderType borderType;
  late int size;
  late String color;
  final TableCellBorderPosition position;
  late int space;

  TableCellBorder(this.position, [
     this.borderType = BorderType.single,
     this.size = 2,
     this.space = 0,
     this.color = "000000"]);

  TableCellBorder setSpace(int space){
    this.space = space;
    return this;
  }
  TableCellBorder setColor(String color){
    this.color = color;
    return this;
  }
  TableCellBorder setSize(int size){
    this.size = size;
    return this;
  }

  TableCellBorder setBorderType(BorderType borderType){
    this.borderType = borderType;
    return this;
  }

  int get getSize => size;

  String get getColor => color;

  BorderType get getBorderType => borderType;
  @override
  String build() {
    XMLBuilder xmlBuilder = XMLBuilder();
    switch(position){
      case TableCellBorderPosition.top:
        xmlBuilder.borderTop(borderType.name, size, space, color);
        break;
      case TableCellBorderPosition.left:
        xmlBuilder.borderLeft(borderType.name, size, space, color);
        break;
      case TableCellBorderPosition.bottom:
        xmlBuilder.borderBottom(borderType.name, size, space, color);
        break;
      case TableCellBorderPosition.right:
        xmlBuilder.borderRight(borderType.name, size, space, color);
        break;
      case TableCellBorderPosition.insideH:
        xmlBuilder.borderInsideH(borderType.name, size, space, color);
        break;
      case TableCellBorderPosition.insideV:
        xmlBuilder.borderInsideV(borderType.name, size, space, color);
        break;
      case TableCellBorderPosition.tr2bl:
        xmlBuilder.borderTr2bl(borderType.name, size, space, color);
        break;
      case TableCellBorderPosition.tl2br:
        xmlBuilder.borderTl2br(borderType.name, size, space, color);
        break;
    }
    return xmlBuilder.build();
  }
}
class TableCellBorders implements BuildXML{
  TableCellBorder? top;
  TableCellBorder? left;
  TableCellBorder? bottom;
  TableCellBorder? right;
  TableCellBorder? insideH;
  TableCellBorder? insideV;
  TableCellBorder? tr2bl;
  TableCellBorder? tl2br;

  TableCellBorders({
    this.top,
    this.left,
    this.bottom,
    this.right,
    this.insideH,
    this.insideV,
    this.tr2bl,
    this.tl2br,
  });

  factory TableCellBorders.empty() => TableCellBorders(
    top: null,
    left: null,
    bottom: null,
    right: null,
    insideH: null,
    insideV: null,
    tr2bl: null,
    tl2br: null,
  );

  factory TableCellBorders.defaults() => TableCellBorders(
    top: TableCellBorder(TableCellBorderPosition.top),
    left: TableCellBorder(TableCellBorderPosition.left),
    bottom: TableCellBorder(TableCellBorderPosition.bottom),
    right: TableCellBorder(TableCellBorderPosition.right),
    insideH: TableCellBorder(TableCellBorderPosition.insideH),
    insideV: TableCellBorder(TableCellBorderPosition.insideV),
    tr2bl: null,
    tl2br: null,
  );

  TableCellBorders setBorder(TableCellBorder border) {
    switch (border.position) {
      case TableCellBorderPosition.top:
        top = border;
        break;
      case TableCellBorderPosition.left:
        left = border;
        break;
      case TableCellBorderPosition.bottom:
        bottom = border;
        break;
      case TableCellBorderPosition.right:
        right = border;
        break;
      case TableCellBorderPosition.insideH:
        insideH = border;
        break;
      case TableCellBorderPosition.insideV:
        insideV = border;
        break;
      case TableCellBorderPosition.tr2bl:
        tr2bl = border;
        break;
      case TableCellBorderPosition.tl2br:
        tl2br = border;
        break;
    }
    return this;
  }

  TableCellBorders clearBorder(TableCellBorderPosition position) {
    final nil = TableCellBorder(position).setBorderType(BorderType.nil);
    switch (position) {
      case TableCellBorderPosition.top:
        top = nil;
        break;
      case TableCellBorderPosition.left:
        left = nil;
        break;
      case TableCellBorderPosition.bottom:
        bottom = nil;
        break;
      case TableCellBorderPosition.right:
        right = nil;
        break;
      case TableCellBorderPosition.insideH:
        insideH = nil;
        break;
      case TableCellBorderPosition.insideV:
        insideV = nil;
        break;
      case TableCellBorderPosition.tr2bl:
        tr2bl = nil;
        break;
      case TableCellBorderPosition.tl2br:
        tl2br = nil;
        break;
    }
    return this;
  }

  TableCellBorders clearAll() => TableCellBorders(
    top: TableCellBorder(TableCellBorderPosition.top).setBorderType(BorderType.nil),
    left: TableCellBorder(TableCellBorderPosition.left).setBorderType(BorderType.nil),
    bottom: TableCellBorder(TableCellBorderPosition.bottom).setBorderType(BorderType.nil),
    right: TableCellBorder(TableCellBorderPosition.right).setBorderType(BorderType.nil),
    insideH: TableCellBorder(TableCellBorderPosition.insideH).setBorderType(BorderType.nil),
    insideV: TableCellBorder(TableCellBorderPosition.insideV).setBorderType(BorderType.nil),
    tr2bl: TableCellBorder(TableCellBorderPosition.tr2bl).setBorderType(BorderType.nil),
    tl2br: TableCellBorder(TableCellBorderPosition.tl2br).setBorderType(BorderType.nil),
  );

  @override
  String build() {
    return XMLBuilder().openTableCellBorder()
        .addOptionalChild(top)
        .addOptionalChild(left)
        .addOptionalChild(bottom)
        .addOptionalChild(right)
        .addOptionalChild(insideH)
        .addOptionalChild(insideV)
        .addOptionalChild(tl2br)
        .addOptionalChild(tr2bl)
        .close().build();
  }
}
// void main() {
//   final builder = TableCellBorders().setBorder(TableCellBorder(TableCellBorderPosition.top));
//   print(builder.build());
// }