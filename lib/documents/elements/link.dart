import '../../xml_builder/mod.dart';
import '../build_xml.dart';
class Link implements BuildXML{
  final String val;

  Link(this.val);

  @override
  String build() {
    return XMLBuilder().link(val).build();
  }
}
// void main() {
//   final builder = Highlight("FFFFFF");
//   print(builder.build());
// }