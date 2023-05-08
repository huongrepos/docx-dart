import 'package:xml/xml.dart';

import '../../xml_builder/mod.dart';
import '../build_xml.dart';
class Underline implements BuildXML{
  final String val;

  Underline(this.val);

  @override
  String build() {
    final builder = XMLBuilder(XmlBuilder());
    builder.underline(val);
    return builder.build();
  }
}
// void main() {
//   final builder = Underline("single");
//   print(builder.build());
// }