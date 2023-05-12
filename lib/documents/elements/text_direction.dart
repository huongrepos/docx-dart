import '../../types/mod.dart';
import '../../xml_builder/mod.dart';
import '../build_xml.dart';
class TextDirection implements BuildXML{
  final TextDirectionType val;

  TextDirection(this.val);

  @override
  String build() {
  return XMLBuilder().textDirection(val.name).build();
  }
}
// void main() {
//   final builder = VMerge(VMergeType.continueMerge);
//   print(builder.build());
// }