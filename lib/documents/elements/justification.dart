import '../../xml_builder/mod.dart';
import '../build_xml.dart';

class Justification implements BuildXML{
  String val;

  Justification(this.val);

  @override
  String build() {
    return XMLBuilder().justification(val).build();
  }
}
// void main() {
//   final builder = Justification(AlignmentType.distribute.name);
//   print(builder.build());
// }