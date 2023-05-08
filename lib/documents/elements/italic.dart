import 'package:xml/xml.dart';

import '../../xml_builder/mod.dart';
import '../build_xml.dart';
class Italic implements BuildXML{
  late final bool val;

  Italic({this.val = true});
  Italic disable() {
    val = false;
    return this;
  }
  @override
  String build() {
    final builder = XMLBuilder(XmlBuilder());
    builder.i(val.toString());
    return builder.build();
  }
}
// void main() {
//   final builder = Italic(true);
//   print(builder.build());
// }