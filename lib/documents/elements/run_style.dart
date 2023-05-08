

import '../../xml_builder/mod.dart';
import '../build_xml.dart';

class RunStyle implements BuildXML{
  String val;

  RunStyle(this.val);

  @override
  String build() {
    final builder = XMLBuilder();
    builder.sz(val??='Normal');
    return builder.build();
  }
}
// void main() {
//   final builder = RunStyle();
//   print(builder.build());
// }