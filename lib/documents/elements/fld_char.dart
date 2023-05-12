import '../../xml_builder/mod.dart';
import '../build_xml.dart';
import '../../types/mod.dart';

class FieldChar implements BuildXML{
  late FieldCharType fieldCharType;
  late bool dirty;

  FieldChar(FieldCharType t) {
    fieldCharType = t;
    dirty = false;
  }

  FieldChar setDirty() {
    dirty = true;
    return this;
  }
  @override
  String build() {
    return XMLBuilder().fieldCharacter(fieldCharType.name, dirty).build();
  }
}
// void main() {
//   final builder = FieldChar(FieldCharType.begin).setDirty();
//   print(builder.build());
// }