
import '../../xml_builder/mod.dart';
import '../build_xml.dart';
class SpecVanish implements BuildXML{

  SpecVanish();
  @override
  String build() {
    return XMLBuilder().specVanish().build();
  }
}
// void main() {
//   final builder = SpecVanish();
//   print(builder.build());
// }