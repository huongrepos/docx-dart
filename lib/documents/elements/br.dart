import '../../xml_builder/mod.dart';
import '../build_xml.dart';
import '../../types/mod.dart';

class Break implements BuildXML{
  final BreakType breakType;

  Break(this.breakType);
  @override
  String build() {
    return XMLBuilder().br(breakType.name).build();
  }
}
// void main() {
//   final builder = Break(BreakType.column);
//   print(builder.build());
// }