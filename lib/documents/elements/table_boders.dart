/*
    Please see. L.4.3.2.18  Border Properties

    left – left border
    right – right border
    top – top border
    bottom – bottom border
    insideH – inner horizontal borders
    insideV – inner vertical borders
    tl2br – diagonal border from top left corner to bottom right corner
    tr2bl – diagonal border from top right corner to bottom left corner
*/

import '../../types/mod.dart';
import '../../types/mod.dart';
import 'mod.dart';
import '../../xml_builder/mod.dart';
import '../build_xml.dart';

class TableBorder implements BuildXML{
  late BorderType borderType;
  late int size;
  late String color;
  late TableBorderPosition position;
  late int space;

  TableBorder(this.position, [this.borderType = BorderType.single,
  this.size = 2,
  this.color = '000000',
  this.space = 0,]);

  // factory TableBorder.new(TableBorderPosition position) => TableBorder(
  // position: position,
  // );

  TableBorder setColor(String color) {
    this.color = color;
    return this;
  }

  TableBorder setSize(int size) {
    this.size = size;
    return this;
  }

  TableBorder setBorderType(BorderType borderType) {
    this.borderType = borderType;
    return this;
  }
  @override
  String build() {
    XMLBuilder xmlBuilder = XMLBuilder();
    if (position == TableBorderPosition.top) {
      xmlBuilder.borderTop(borderType.name, size, space, color);
    } else if (position == TableBorderPosition.left) {
      xmlBuilder.borderLeft(borderType.name, size, space, color);
    } else if (position == TableBorderPosition.bottom) {
      xmlBuilder.borderBottom(borderType.name, size, space, color);
    } else if (position == TableBorderPosition.right) {
      xmlBuilder.borderRight(borderType.name, size, space, color);
    } else if (position == TableBorderPosition.insideH) {
      xmlBuilder.borderInsideH(borderType.name, size, space, color);
    } else if (position == TableBorderPosition.insideV) {
      xmlBuilder.borderInsideV(borderType.name, size, space, color);
    }
    return xmlBuilder.build();
  }
}

class TableBorders implements BuildXML{
  late TableBorder? top;
  late TableBorder? left;
  late TableBorder? bottom;
  late TableBorder? right;
  late TableBorder? insideH;
  late TableBorder? insideV;

  TableBorders({
    this.top,
    this.left,
    this.bottom,
    this.right,
    this.insideH,
    this.insideV,
  });

  factory TableBorders.defaultBorders() => TableBorders(
    top: TableBorder(TableBorderPosition.top),
    left: TableBorder(TableBorderPosition.left),
    bottom: TableBorder(TableBorderPosition.bottom),
    right: TableBorder(TableBorderPosition.right),
    insideH: TableBorder(TableBorderPosition.insideH),
    insideV: TableBorder(TableBorderPosition.insideV),
  );

  factory TableBorders.withEmpty() => TableBorders(
    top: null,
    left: null,
    bottom: null,
    right: null,
    insideH: null,
    insideV: null,
  );
  TableBorders setBorder(TableBorder border) {
    switch (border.position) {
      case TableBorderPosition.top:
        top = border;
        break;
      case TableBorderPosition.left:
        left = border;
        break;
      case TableBorderPosition.bottom:
        bottom = border;
        break;
      case TableBorderPosition.right:
        right = border;
        break;
      case TableBorderPosition.insideH:
        insideH = border;
        break;
      case TableBorderPosition.insideV:
        insideV = border;
        break;
    }
    return this;
  }
  TableBorders clearBorder(TableBorderPosition position) {
    final nil = TableBorder(position).setBorderType(BorderType.nil);
    switch (position) {
      case TableBorderPosition.top:
        top = nil;
        break;
      case TableBorderPosition.left:
        left = nil;
        break;
      case TableBorderPosition.bottom:
        bottom = nil;
        break;
      case TableBorderPosition.right:
        right = nil;
        break;
      case TableBorderPosition.insideH:
        insideH = nil;
        break;
      case TableBorderPosition.insideV:
        insideV = nil;
        break;
    }
    return this;
  }

  TableBorders clearAll() => TableBorders(
    top: TableBorder(TableBorderPosition.top).setBorderType(BorderType.nil),
    left: TableBorder(TableBorderPosition.left).setBorderType(BorderType.nil),
    bottom: TableBorder(TableBorderPosition.bottom).setBorderType(BorderType.nil),
    right: TableBorder(TableBorderPosition.right).setBorderType(BorderType.nil),
    insideH: TableBorder(TableBorderPosition.insideH).setBorderType(BorderType.nil),
    insideV: TableBorder(TableBorderPosition.insideV).setBorderType(BorderType.nil),
   );
  @override
  String build() {
    return XMLBuilder().openTableBorder()
      .addOptionalChild(top)
      .addOptionalChild(left)
      .addOptionalChild(bottom)
      .addOptionalChild(right)
      .addOptionalChild(insideH)
      .addOptionalChild(insideV)
      .close().build();
  }
}