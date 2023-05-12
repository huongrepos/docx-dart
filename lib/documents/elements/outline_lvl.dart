import '../../xml_builder/mod.dart';
import '../build_xml.dart';

class OutlineLvl implements BuildXML{
  int v;

  OutlineLvl({required this.v});

  factory OutlineLvl.newOutlineLvl(int v) {
    assert(v < 10, 'outline level should be less than 10');
    return OutlineLvl(v: v);
  }
  @override
  String build() {
    return XMLBuilder().outlineLvl(v).build();
  }
}
// void main() {
//   final builder = OutlineLvl.newOutlineLvl(1);
//   print(builder.build());
// }