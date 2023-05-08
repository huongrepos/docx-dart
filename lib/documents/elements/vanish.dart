import 'package:xml/xml.dart';

import '../../xml_builder/mod.dart';
import '../build_xml.dart';
class Vanish implements BuildXML{

  Vanish();
  @override
  String build() {
    final builder = XMLBuilder(XmlBuilder());
    builder.vanish();
    return builder.build();
  }
}
// void main() {
//   final builder = Vanish();
//   print(builder.build());
// }