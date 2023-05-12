import 'mod.dart';
import '../../xml_builder/mod.dart';
import '../build_xml.dart';

class Run implements BuildXML{
  late RunProperty runProperty;
  late List<RunChild> children;
  Run({required this.runProperty, required this.children});
  factory Run.defaultValues() => Run(runProperty:RunProperty.defaultValues(), children:[]);

  @override
  String build() {
    return XMLBuilder().openRun().addChild(runProperty).addChildren(children).close().build();
  }
}
class RunChild implements BuildXML{
  Object? value;
  RunChild(dynamic this.value);
  @override
  String build() {
    switch (value.runtimeType) {
    case Text:
      return (value as Text).build();
    case DeleteText:
      return (value as DeleteText).build();
      case Tab:
        return (value as Tab).build();
    case Break:
      return (value as Break).build();
    // case Drawing:
    //   return (value as Drawing).build();
    // case Shape:
    //   return (value as Shape).build();
    // case CommentRangeStart:
    //   return (value as CommentRangeStart).build();
      case CommentRangeEnd:
        return (value as CommentRangeEnd).build();
    case FieldChar:
      return (value as FieldChar).build();
    // case InstrText:
    //   return (value as InstrText).build();
    // case DeleteInstrText:
    //   return (value as DeleteInstrText).build();
      default:
        throw Exception("Unsupported type: $runtimeType");
    }
  }
}
// void main() {
//   final builder = Run.defaultValues();
//   print(builder.build());
// }