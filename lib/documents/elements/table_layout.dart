import '../../types/mod.dart';
import '../../xml_builder/mod.dart';
import '../build_xml.dart';
class TableLayout implements BuildXML{
  final TableLayoutType val;

  TableLayout(this.val);

  @override
  String build() {
    return XMLBuilder().tableLayout(val.name).build();
  }
}
// void main() {
//   final builder = Highlight("FFFFFF");
//   print(builder.build());
// }