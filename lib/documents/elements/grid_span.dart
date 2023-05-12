import '../../xml_builder/mod.dart';
import '../build_xml.dart';
class GridSpan implements BuildXML{
  int val;

  GridSpan({required this.val});

  factory GridSpan.newNumberingId(int val) {
    return GridSpan(val: val);
  }
  @override
  String build() {
    return XMLBuilder().gridSpan(val).build();
  }
}
// void main(){
//   final builder = GridSpan(val: 1);
//   print(builder.build());
// }