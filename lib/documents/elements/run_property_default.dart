import 'mod.dart';
import '../../xml_builder/mod.dart';
import '../build_xml.dart';

class RunPropertyDefault  implements BuildXML{
  RunProperty runProperty;

  RunPropertyDefault({required this.runProperty});
  factory RunPropertyDefault.defaultValues() => RunPropertyDefault(runProperty: RunProperty.defaultValues());

  RunPropertyDefault size(int size) {
    runProperty = runProperty.withSize(size);
    return this;
  }

  RunPropertyDefault spacing(int spacing) {
    runProperty = runProperty.withSpacing(spacing);
    return this;
  }

  RunPropertyDefault fonts(RunFonts font) {
    runProperty = runProperty.withFonts(font);
    return this;
  }

  RunPropertyDefault setRunProperty(RunProperty newProperty) {
    runProperty = newProperty;
    return this;
  }
  @override
  String build() {
    return XMLBuilder().openRunPropertyDefault().addChild(runProperty).close().build();
  }  
}
// void main() {
//   final builder = RunPropertyDefault.defaultValues();
//   print(builder.build());
// }