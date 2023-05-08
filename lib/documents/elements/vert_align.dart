import 'package:docx_dart/types/mod.dart';
import 'package:xml/xml.dart';

import '../../xml_builder/mod.dart';
import '../build_xml.dart';
class VertAlign implements BuildXML{
  final VertAlignType val;

  VertAlign(this.val);

  @override
  String build() {
    final builder = XMLBuilder(XmlBuilder());
    builder.vertAlign(val.name);
    return builder.build();
  }
}
// void main() {
//   final builder = VertAlign(VertAlignType.baseline);
//   print(builder.build());
// }