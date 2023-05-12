import '../../xml_builder/mod.dart';
import '../build_xml.dart';
class Text implements BuildXML{
  String text;
  bool preserveSpace;

  Text(this.text, {this.preserveSpace = true});

  Text.withoutEscape(this.text, {this.preserveSpace = true});
  @override
  String build() {
    return XMLBuilder().text(text, preserveSpace).build();
  }
}
// void main() {
//   final builder = Text("Hello");
//   print(builder.build());
// }