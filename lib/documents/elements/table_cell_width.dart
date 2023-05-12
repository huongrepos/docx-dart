import '../../types/mod.dart';
import '../../xml_builder/mod.dart';
import '../build_xml.dart';
class TableCellWidth implements BuildXML{
  final int width;
  final WidthType widthType;

  const TableCellWidth(this.width, this.widthType);

  @override
  String build() {
    return XMLBuilder().tableCellWidth(width, widthType.name).build();
  }
}
// void main() {
//   final builder = TableCellWidth(20, WidthType.auto);
//   print(builder.build());
// }