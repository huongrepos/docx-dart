import '../../xml_builder/mod.dart';
import '../build_xml.dart';
import '../../types/mod.dart';

class LineSpacing implements BuildXML{
  LineSpacingType? lineRule;
  int? before;
  int? after;
  int? beforeLines;
  int? afterLines;
  int? line;

  LineSpacing({
    this.lineRule,
    this.before,
    this.after,
    this.beforeLines,
    this.afterLines,
    this.line,
  });

  factory LineSpacing.newLineSpacing() {
    return LineSpacing();
  }

  LineSpacing setLineRule(LineSpacingType t) {
    lineRule = t;
    return this;
  }

  LineSpacing setBefore(int before) {
    this.before = before;
    return this;
  }

  LineSpacing setAfter(int after) {
    this.after = after;
    return this;
  }

  LineSpacing setBeforeLines(int before) {
    beforeLines = before;
    return this;
  }

  LineSpacing setAfterLines(int after) {
    afterLines = after;
    return this;
  }

  LineSpacing setLine(int line) {
    this.line = line;
    return this;
  }
  @override
  String build() {
    return XMLBuilder().lineSpacing(before, after, line, beforeLines, afterLines, lineRule).build();
  }
}
// void main() {
//   final builder = LineSpacing();
//   print(builder.build());
// }