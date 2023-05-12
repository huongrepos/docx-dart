import '../../types/mod.dart';
import 'mod.dart';
import '../../xml_builder/mod.dart';
import '../build_xml.dart';
class TableCellProperty implements BuildXML{
  TableCellWidth? width;
  TableCellBorders? borders;
  GridSpan? gridSpan;
  VMerge? verticalMerge;
  VAlign? verticalAlign;
  TextDirection? textDirection;
  Shading? shading;

  TableCellProperty({
    this.width,
    this.borders,
    this.gridSpan,
    this.verticalMerge,
    this.verticalAlign,
    this.textDirection,
    this.shading,
  });

  TableCellProperty setWidth(int size, WidthType width){
    this.width = TableCellWidth(size, width);
    return this;
  }

  TableCellProperty setVerticalMerge(VMergeType verticalMerge){
    this.verticalMerge = VMerge(verticalMerge);
    return this;
  }

  TableCellProperty setVerticalAlign(VAlignType verticalAlign){
    this.verticalAlign = VAlign(verticalAlign);
    return this;
  }

  TableCellProperty setTextDirection(TextDirectionType textDirection){
    this.textDirection = TextDirection(textDirection);
    return this;
  }

  TableCellProperty setGridSpan(int gridSpan){
    this.gridSpan = GridSpan(val: gridSpan);
    return this;
  }

  TableCellProperty setShading(Shading shading){
    this.shading = shading;
    return this;
  }

  TableCellProperty setBorders(TableCellBorders borders){
    this.borders = borders;
    return this;
  }

  TableCellProperty setBorder(TableCellBorder border){
    borders = borders?.setBorder(border);
    return this;
  }

  TableCellProperty clearBorder(TableCellBorderPosition position){
    borders = borders?.clearBorder(position);
    return this;
  }
  TableCellProperty learAllBorders(){
    borders = borders?.clearAll();
    return this;
  }

  TableCellProperty copyWith({
    TableCellWidth? width,
    TableCellBorders? borders,
    GridSpan? gridSpan,
    VMerge? verticalMerge,
    VAlign? verticalAlign,
    TextDirection? textDirection,
    Shading? shading,
  }) {
    return TableCellProperty(
      width: width ?? this.width,
      borders: borders ?? this.borders,
      gridSpan: gridSpan ?? this.gridSpan,
      verticalMerge: verticalMerge ?? this.verticalMerge,
      verticalAlign: verticalAlign ?? this.verticalAlign,
      textDirection: textDirection ?? this.textDirection,
      shading: shading ?? this.shading,
    );
  }
  @override
  String build() {
    return XMLBuilder().openTableCellProperty()
        .addOptionalChild(width)
        .addOptionalChild(borders)
        .addOptionalChild(gridSpan)
        .addOptionalChild(verticalMerge)
        .addOptionalChild(verticalAlign)
        .addOptionalChild(textDirection)
        .addOptionalChild(shading)
        .close().build();
  }
}

// void main() {
//   final builder = TableCellProperty().setVerticalAlign(VAlignType.center);
//   print(builder.build());
// }