
import '../../xml_builder/mod.dart';
import '../build_xml.dart';
class Vanish implements BuildXML{
  Vanish();
  @override
  String build() {
    return XMLBuilder().vanish().build();
  }
}
// void main() {
//   final builder = Vanish();
//   print(builder.build());
// }