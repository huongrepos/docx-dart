import '../../xml_builder/mod.dart';
import '../build_xml.dart';

class ParagraphStyle implements BuildXML{
  late String val;

  ParagraphStyle([this.val = 'Normal']);
  @override
  String build() {
    return XMLBuilder().paragraphStyle(val).build();
  }
}
// void main() {
//   final builder = ParagraphStyle();
//   print(builder.build());
// }