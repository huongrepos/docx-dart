import '../../xml_builder/mod.dart';
import '../build_xml.dart';
class Next implements BuildXML{
  final String val;

  Next(this.val);

  @override
  String build() {
    return XMLBuilder().next(val).build();
  }
}
// void main() {
//   final builder = Highlight("FFFFFF");
//   print(builder.build());
// }