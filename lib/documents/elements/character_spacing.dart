import 'package:xml/xml.dart';

import '../../xml_builder/mod.dart';
import '../build_xml.dart';
class CharacterSpacing implements BuildXML{
  final int val;

  CharacterSpacing(this.val);

  @override
  String build() {
    final builder = XMLBuilder();
    builder.spacing(val);
    return builder.build();
  }
}
void main() {
  final builder = CharacterSpacing(1);
  print(builder.build());
}