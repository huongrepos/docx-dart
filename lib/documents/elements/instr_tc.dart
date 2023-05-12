import '../../xml_builder/mod.dart';
import '../build_xml.dart';
class InstrTC implements BuildXML{
  String text;
  bool omitsPageNumber;
  int? level;
  String? itemTypeIdentifier;

  InstrTC({required this.text, this.omitsPageNumber = false, this.level, this.itemTypeIdentifier});

  factory InstrTC.newInstrTC(String text) {
    return InstrTC(text: text);
  }

  InstrTC withOmitsPageNumber() {
    omitsPageNumber = true;
    return this;
  }

  InstrTC withLevel(int level) {
    this.level = level;
    return this;
  }

  InstrTC withItemTypeIdentifier(String itemTypeIdentifier) {
    this.itemTypeIdentifier = itemTypeIdentifier;
    return this;
  }
  @override
  String build() {
    final sb = StringBuffer();
    sb.write('TC $text');
    if (itemTypeIdentifier != null) {
      sb.write(' \\f $itemTypeIdentifier');
    }
    if (level != null) {
      sb.write(' \\l $level');
    }
    if (omitsPageNumber) {
      sb.write(' \\n');
    }
    return sb.toString();
  }

  static InstrTC fromString(String instr) {
    final parts = instr.split(' ');
    final text = parts.first;
    var tc = InstrTC.newInstrTC(text);
    for (var i = 1; i < parts.length; i++) {
      switch (parts[i]) {
        case '\\f':
          final r = parts[i + 1].replaceAll('&quot;', '').replaceAll('"', '');
          tc = tc.withItemTypeIdentifier(r);
          i++;
          break;
        case '\\l':
          final r = parts[i + 1].replaceAll('&quot;', '').replaceAll('"', '');
          final level = int.tryParse(r);
          if (level != null) {
            tc = tc.withLevel(level);
          }
          i++;
          break;
        case '\\n':
          tc = tc.withOmitsPageNumber();
          break;
        default:
          break;
      }
    }
    return tc;
  }
}
void main(){
  late InstrTC builder = InstrTC(text: "hello");
  print(builder.build());
}