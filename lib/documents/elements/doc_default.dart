import 'mod.dart';
import '../../xml_builder/mod.dart';
import '../build_xml.dart';

class DocDefaults implements BuildXML{
  RunPropertyDefault runPropertyDefault;

  DocDefaults({required this.runPropertyDefault});
  factory DocDefaults.defaultValues() => DocDefaults(runPropertyDefault: RunPropertyDefault.defaultValues());

  DocDefaults size(int size) {
    runPropertyDefault = runPropertyDefault.size(size);
    return this;
  }
  DocDefaults spacing(int spacing) {
    runPropertyDefault = runPropertyDefault.spacing(spacing);
    return this;
  }
  DocDefaults fonts(RunFonts font) {
    runPropertyDefault = runPropertyDefault.fonts(font);
    return this;
  }
  DocDefaults runProperty(RunProperty p) {
    runPropertyDefault = runPropertyDefault.setRunProperty(p);
    return this;
  }
  @override
  String build() {
    return XMLBuilder().openDocDefaults().addChild(runPropertyDefault).close().build();
  }  
}
// void main() {
//   final builder = DocDefaults.defaultValues();
//   print(builder.build());
// }