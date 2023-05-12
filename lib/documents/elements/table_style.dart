import '../../xml_builder/mod.dart';
import '../build_xml.dart';
class TableStyle implements BuildXML{
  final String val;

  TableStyle(this.val);

  @override
  String build() {
    return XMLBuilder().tableStyle(val).build();
  }
}
// void main() {
//   final builder = Highlight("FFFFFF");
//   print(builder.build());
// }