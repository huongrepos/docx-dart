
import '../../xml_builder/mod.dart';
import '../build_xml.dart';
class Vanish implements BuildXML{

  Vanish();
  @override
  String build() {
    final builder = XMLBuilder();
    builder.vanish();
    return builder.build();
  }
}
// void main() {
//   final builder = Vanish();
//   print(builder.build());
// }