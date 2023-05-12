

import 'package:docx_dart/types/mod.dart';

import '../../xml_builder/mod.dart';
import 'mod.dart';
import '../build_xml.dart';

class TableProperty implements BuildXML{
  late TableWidth width;
  late Justification justification;
  late TableBorders borders;
  late TableCellMargins? margins;
  late TableIndent? indent;
  late TableStyle? style;
  late TableLayout? layout;

  TableProperty(
       this.width,
       this.justification,
       this.borders,
      [this.margins,
        this.indent,
        this.style,
        this.layout]);

  factory TableProperty.defaultSettings() => TableProperty(TableWidth(0, WidthType.auto),Justification("left"),TableBorders.withEmpty());

    TableProperty withoutBorders() {
      borders = TableBorders.withEmpty();
      return this;
    }

    TableProperty setIndent(int v) {
      indent = TableIndent(v, WidthType.dxa);
      return this;
    }

    TableProperty setWidth(int v, WidthType t) {
      width = TableWidth(v, t);
      return this;
    }

    TableProperty align(TableAlignmentType v) {
      justification = Justification(v.name);
      return this;
    }

    TableProperty setMargins(TableCellMargins margins) {
      this.margins = margins;
      return this;
    }

    TableProperty cellMarginTop(int v, WidthType t) {
      margins = margins?.setMarginTop(v, t);
      return this;
    }

    TableProperty cellMarginRight(int v, WidthType t) {
      margins = margins?.setMarginRight(v, t);
      return this;
    }

    TableProperty cellMarginBottom(int v, WidthType t) {
      margins = margins?.setMarginBottom(v, t);
      return this;
    }

    TableProperty cellMarginLeft(int v, WidthType t) {
      margins = margins?.setMarginLeft(v, t);
      return this;
    }

    TableProperty setBorders(TableBorders borders) {
      this.borders = borders;
      return this;
    }

    TableProperty setBorder(TableBorder border) {
      borders = borders.setBorder(border);
      return this;
    }

    TableProperty clearBorder(TableBorderPosition position) {
      borders = borders.clearBorder(position);
      return this;
    }

    TableProperty clearAllBorder() {
      borders = borders.clearAll();
      return this;
    }

    TableProperty setStyle(String s) {
      style = TableStyle(s);
      return this;
    }

    TableProperty setLayout(TableLayoutType t) {
      layout = TableLayout(t);
      return this;
    }

    @override
    String build() {
      return XMLBuilder().openTableProperty()
          .addChild(width)
          .addChild(justification)
          .addChild(borders)
          .addOptionalChild(margins)
          .addOptionalChild(indent)
          .addOptionalChild(style)
          .addOptionalChild(layout)
          .close().build();
    }
}
// void main() {
//   final builder = TableProperty.defaultSettings();
//   print(builder.build());
// }