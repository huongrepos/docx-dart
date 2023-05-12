import '../../types/mod.dart';
import '../../xml_builder/mod.dart';
import '../build_xml.dart';
class Shading implements BuildXML{
  ShdType shdType;
  String color;
  String fill;

  Shading({
    this.shdType = ShdType.clear,
    this.color = 'auto',
    this.fill = 'FFFFFF',
  });

  factory Shading.defaultSettings() => Shading();

  Shading setColor(String color) {
    return Shading(
      shdType: shdType,
      color: color,
      fill: fill,
    );
  }

  Shading setFill(String fill) {
    return Shading(
      shdType: shdType,
      color: color,
      fill: fill,
    );
  }

  Shading setShdType(ShdType shdType) {
    return Shading(
      shdType: shdType,
      color: color,
      fill: fill,
    );
  }
  @override
  String build() {
    return XMLBuilder().shd(shdType.name, color, fill).build();
  }
}
// void main() {
//   final builder = Shading();
//   print(builder.build());
// }