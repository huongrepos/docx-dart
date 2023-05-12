import 'mod.dart';
import '../build_xml.dart';
class InstrText implements BuildXML{
  Object? value;
  InstrText(dynamic this.value);
  @override
  String build() {
    switch (value.runtimeType) {
      case Run:
        return (value as Run).build();
      default:
        throw Exception("Unsupported type: $runtimeType");
    }
  }
}