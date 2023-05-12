
import '../../types/mod.dart';
import '../../xml_builder/mod.dart';
import '../build_xml.dart';

class Indent implements BuildXML{
  int? start;
  int? end;
  SpecialIndentType? specialIndent;
  int? startChars;
  int? hangingChars;
  int? firstLineChars;

  Indent({
    this.start,
    this.end,
    this.specialIndent,
    this.startChars,
    this.hangingChars,
    this.firstLineChars,
  });

  factory Indent.newIndent([
    int? start,
    SpecialIndentType? specialIndent,
    int? end,
    int? startChars,]) {
    return Indent(
      start: start,
      specialIndent: specialIndent,
      end: end,
      startChars: startChars,
    );
  }

  Indent setEnd(int end) {
    this.end = end;
    return this;
  }

  Indent setHangingChars(int chars) {
    hangingChars = chars;
    return this;
  }

  Indent setFirstLineChars(int chars) {
    firstLineChars = chars;
    return this;
  }
  
  @override
  String build() {
    return XMLBuilder().indent(start, specialIndent, end, startChars).build();
  }
}
// void main() {
//   final builder = Indent().setEnd(1);
//   print(builder.build());
// }