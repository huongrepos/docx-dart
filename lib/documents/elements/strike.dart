import 'package:xml/xml.dart';

import '../../xml_builder/mod.dart';
import '../build_xml.dart';
class Strike implements BuildXML{
  late final bool val;

  Strike({this.val = true});
  Strike disable() {
    val = false;
    return this;
  }
  @override
  String build() {
    final builder = XMLBuilder(XmlBuilder());
    builder.strike(val.toString());
    return builder.build();
  }
}
// void main() {
//   final builder = Strike(true);
//   print(builder.build());
// }