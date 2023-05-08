import 'package:xml/xml.dart';

import '../../xml_builder/mod.dart';
import '../build_xml.dart';
class SzCs implements BuildXML{
  final int val;

  SzCs(this.val);

  @override
  String build() {
    final builder = XMLBuilder();
    builder.szCs(val.toString());
    return builder.build();
  }
}
// void main() {
//   final builder = SzCs(1);
//   print(builder.build());
// }