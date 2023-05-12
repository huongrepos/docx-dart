import '../../types/mod.dart';
import '../../xml_builder/mod.dart';
import '../build_xml.dart';
class VMerge implements BuildXML{
  final VMergeType val;

  VMerge(this.val);

  @override
  String build() {
  return XMLBuilder().verticalMerge(val.name).build();
  }
}
// void main() {
//   final builder = VMerge(VMergeType.continueMerge);
//   print(builder.build());
// }