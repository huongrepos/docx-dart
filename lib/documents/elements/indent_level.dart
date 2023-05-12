import '../../xml_builder/mod.dart';
import '../build_xml.dart';

class IndentLevel implements BuildXML{
  int v;

  IndentLevel({required this.v});

  factory IndentLevel.newIndentLevel(int v) {
    return IndentLevel(v: v);
  }
  @override
  String build() {
    return XMLBuilder().indentLevel(v).build();
  }
}
// void main() {
//   final builder = IndentLevel.newIndentLevel(1);
//   print(builder.build());
// }