import 'package:xml/xml.dart';

import '../../xml_builder/mod.dart';
import '../build_xml.dart';
class CharacterSpacing implements BuildXML{
  final int val;

  CharacterSpacing(this.val);

  @override
  String build() {
    final builder = XMLBuilder(XmlBuilder());
    builder.spacing(val);
    return builder.build();
  }
}
// void main() {
//   final builder = Sz(1);
//   print(builder.build());
// }