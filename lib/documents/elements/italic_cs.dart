import 'package:xml/xml.dart';

import '../../xml_builder/mod.dart';
import '../build_xml.dart';
class ItalicCs implements BuildXML{
  late final bool val;

  ItalicCs({this.val = true});
  ItalicCs disable() {
    val = false;
    return this;
  }
  @override
  String build() {
    final builder = XMLBuilder(XmlBuilder());
    builder.iCs(val.toString());
    return builder.build();
  }
}
// void main() {
//   final builder = ItalicCs(true);
//   print(builder.build());
// }