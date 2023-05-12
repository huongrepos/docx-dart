import '../../escape/mod.dart';
import '../../xml_builder/mod.dart';
import '../build_xml.dart';
class Name implements BuildXML{
  String name;

  Name(this.name) {
    name = escape(name);
  }

  bool startsWith(String s) {
    return name.startsWith(s);
  }

  bool isHeading() {
    return name.toLowerCase().startsWith('heading');
  }

  int? getHeadingNumber() {
    final replaced = name.toLowerCase().replaceFirst('heading ', '');
    final n = int.tryParse(replaced);
    return n;
  }
  @override
  String build() {
    return XMLBuilder().name(name).build();
  }
}
// void main() {
//   final builder = Name("Heading");
//   print(builder.build());
// }
