import 'package:xml/xml.dart';

import '../../xml_builder/mod.dart';
import '../build_xml.dart';
class Color implements BuildXML{
  final String val;

  Color(this.val);

  @override
  String build() {
    final builder = XMLBuilder();
    builder.color(val);
    return builder.build();
  }
}
// void main() {
//   final builder = Color("FFFFFF");
//   print(builder.build());
// }