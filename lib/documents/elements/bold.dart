
import '../../xml_builder/mod.dart';
import '../build_xml.dart';
class Bold implements BuildXML{
  late final bool val;

  Bold({this.val = true});
  Bold disable() {
    val = false;
    return this;
  }
  @override
  String build() {
    return XMLBuilder().b(val.toString()).build();
  }
}
// void main() {
//   final builder = Bold();
//   print(builder.build());
// }