import 'mod.dart';
import '../../xml_builder/mod.dart';
import '../build_xml.dart';

class NumberingProperty implements BuildXML{
  NumberingId? id;
  IndentLevel? level;

  NumberingProperty({this.id, this.level});

  factory NumberingProperty.newNumberingProperty() {
    return NumberingProperty();
  }

  NumberingProperty setId(NumberingId id) {
    this.id = id;
    return this;
  }

  NumberingProperty addNum(NumberingId id, IndentLevel level) {
    this.id = id;
    this.level = level;
    return this;
  }
  @override
  String build() {
    return XMLBuilder().openNumberingProperty().addOptionalChild(id).addOptionalChild(level).close().build();
  }
}
// void main() {
//   final builder = NumberingProperty().addNum(NumberingId(id: 1), IndentLevel(v: 1));
//   print(builder.build());
// }