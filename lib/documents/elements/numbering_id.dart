import '../../xml_builder/mod.dart';
import '../build_xml.dart';
class NumberingId implements BuildXML{
  int id;

  NumberingId({required this.id});

  factory NumberingId.newNumberingId(int id) {
    return NumberingId(id: id);
  }
  @override
  String build() {
    return XMLBuilder().numId(id).build();
  }
}
// void main(){
//   final builder = NumberingId(id: 1);
//   print(builder.build());
// }