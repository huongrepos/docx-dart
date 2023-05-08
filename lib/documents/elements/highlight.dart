import 'package:xml/xml.dart';

import '../../xml_builder/mod.dart';
import '../build_xml.dart';
class Highlight implements BuildXML{
  final String val;

  Highlight(this.val);

  @override
  String build() {
    final builder = XMLBuilder();
    builder.highlight(val);
    return builder.build();
  }
}
// void main() {
//   final builder = Highlight("FFFFFF");
//   print(builder.build());
// }