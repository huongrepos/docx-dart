import '../../xml_builder/mod.dart';
import '../build_xml.dart';
class DeleteText implements BuildXML{
  String text;
  bool preserveSpace;

  DeleteText(this.text, {this.preserveSpace = true});

  DeleteText.withoutEscape(this.text, {this.preserveSpace = true});
  @override
  String build() {
    return XMLBuilder().deleteText(text, preserveSpace).build();
  }
}
void main() {
  final builder = DeleteText("Hello");
  print(builder.build());
}