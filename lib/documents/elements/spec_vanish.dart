import 'package:xml/xml.dart';

import '../../xml_builder/mod.dart';
import '../build_xml.dart';
class SpecVanish implements BuildXML{

  SpecVanish();
  @override
  String build() {
    final builder = XMLBuilder(XmlBuilder());
    builder.specVanish();
    return builder.build();
  }
}
// void main() {
//   final builder = SpecVanish();
//   print(builder.build());
// }