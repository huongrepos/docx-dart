import '../../xml_builder/mod.dart';
import '../build_xml.dart';

class RunStyle implements BuildXML{
  late String val;

  RunStyle([this.val = 'Normal']);
  @override
  String build() {
    return XMLBuilder().sz(val).build();
  }
}
// void main() {
//   final builder = RunStyle();
//   print(builder.build());
// }