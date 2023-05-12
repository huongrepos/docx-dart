import '../../types/mod.dart';
import '../../xml_builder/mod.dart';
import '../build_xml.dart';
class TableWidth implements BuildXML{
  final int width;
  final WidthType widthType;

  const TableWidth(this.width, this.widthType);
  @override
  String build() {
    return XMLBuilder().tableWidth(width, widthType.name)
        .close().build();
  }
}