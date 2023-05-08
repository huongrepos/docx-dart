import 'package:xml/xml.dart';

import '../../xml_builder/mod.dart';
import '../../types/mod.dart';
import '../build_xml.dart';

class TextBorder implements BuildXML{
  BorderType borderType;
  int size;
  String color;
  int space;

  TextBorder({
    this.borderType = BorderType.none,
    this.size = 0,
    this.color = '',
    this.space = 0,
  });

  TextBorder withBorderType(BorderType borderType) {
    return TextBorder(
      borderType: borderType,
      size: size,
      color: color,
      space: space,
    );
  }

  TextBorder withSize(int size) {
    return TextBorder(
      borderType: borderType,
      size: size,
      color: color,
      space: space,
    );
  }

  TextBorder withColor(String color) {
    return TextBorder(
      borderType: borderType,
      size: size,
      color: color,
      space: space,
    );
  }

  TextBorder withSpace(int space) {
    return TextBorder(
      borderType: borderType,
      size: size,
      color: color,
      space: space,
    );
  }
  @override
  String build() {
    final builder = XMLBuilder();
    builder.textBorder(borderType.name, size, color, space);
    return builder.build();
  }
}
// void main() {
//   final builder = TextBorder().withBorderType(BorderType.apples);
//   print(builder.build());
// }