import '../../types/mod.dart';
import '../../xml_builder/mod.dart';
import '../build_xml.dart';
class TableIndent implements BuildXML{
  final int width;
  final WidthType widthType;

  const TableIndent(this.width, this.widthType);

  @override
  String build() {
    return XMLBuilder().tableIndent(width, widthType.name).build();
  }
}
// void main() {
//   final builder = TableCellWidth(20, WidthType.auto);
//   print(builder.build());
// }