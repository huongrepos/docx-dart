import 'package:xml/xml.dart';

import '../../xml_builder/mod.dart';
import '../build_xml.dart';
class BoldCs implements BuildXML{
  late final bool val;

  BoldCs({this.val = true});
  BoldCs disable() {
    val = false;
    return this;
  }
  @override
  String build() {
    final builder = XMLBuilder(XmlBuilder());
    builder.bCs(val.toString());
    return builder.build();
  }
}
// void main() {
//   final builder = BoldCs(true);
//   print(builder.build());
// }