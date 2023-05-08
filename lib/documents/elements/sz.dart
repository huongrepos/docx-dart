import 'package:xml/xml.dart';

import '../../xml_builder/mod.dart';
import '../build_xml.dart';
class Sz implements BuildXML{
  final int val;

  Sz(this.val);

  @override
  String build() {
    final builder = XMLBuilder(XmlBuilder());
    builder.sz(val.toString());
    return builder.build();
  }
}
// void main() {
//   final builder = Sz(1);
//   print(builder.build());
// }