import 'package:xml/xml.dart';

import '../../xml_builder/mod.dart';
import '../build_xml.dart';
class BasedOn implements BuildXML{
  final String val;

  BasedOn(this.val);

  @override
  String build() {
    return XMLBuilder().basedOn(val).build();
  }
}
// void main() {
//   final builder = Highlight("FFFFFF");
//   print(builder.build());
// }