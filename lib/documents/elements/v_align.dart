import '../../types/mod.dart';
import '../../xml_builder/mod.dart';
import '../build_xml.dart';
class VAlign implements BuildXML{
  final VAlignType val;

  VAlign(this.val);

  @override
  String build() {
  return XMLBuilder().verticalAlign(val.name).build();
  }
}
// void main() {
//   final builder = VAlign(VAlignType.center);
//   print(builder.build());
// }