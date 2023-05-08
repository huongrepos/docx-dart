import 'package:xml/xml.dart';

import '../../xml_builder/mod.dart';
import '../build_xml.dart';
class RunFonts implements BuildXML{
  String? ascii;
  String? hiAnsi;
  String? eastAsia;
  String? cs;
  String? asciiTheme;
  String? hiAnsiTheme;
  String? eastAsiaTheme;
  String? csTheme;
  String? hint;

  RunFonts({
    this.ascii,
    this.hiAnsi,
    this.eastAsia,
    this.cs,
    this.asciiTheme,
    this.hiAnsiTheme,
    this.eastAsiaTheme,
    this.csTheme,
    this.hint,
  });

  RunFonts withAscii(String? ascii) {
    return RunFonts(
      ascii: ascii,
      hiAnsi: hiAnsi,
      eastAsia: eastAsia,
      cs: cs,
      asciiTheme: asciiTheme,
      hiAnsiTheme: hiAnsiTheme,
      eastAsiaTheme: eastAsiaTheme,
      csTheme: csTheme,
      hint: hint,
    );
  }

  RunFonts withHiAnsi(String? hiAnsi) {
    return RunFonts(
      ascii: ascii,
      hiAnsi: hiAnsi,
      eastAsia: eastAsia,
      cs: cs,
      asciiTheme: asciiTheme,
      hiAnsiTheme: hiAnsiTheme,
      eastAsiaTheme: eastAsiaTheme,
      csTheme: csTheme,
      hint: hint,
    );
  }

  RunFonts withEastAsia(String? eastAsia) {
    return RunFonts(
      ascii: ascii,
      hiAnsi: hiAnsi,
      eastAsia: eastAsia,
      cs: cs,
      asciiTheme: asciiTheme,
      hiAnsiTheme: hiAnsiTheme,
      eastAsiaTheme: eastAsiaTheme,
      csTheme: csTheme,
      hint: hint,
    );
  }

  RunFonts withCs(String? cs) {
    return RunFonts(
      ascii: ascii,
      hiAnsi: hiAnsi,
      eastAsia: eastAsia,
      cs: cs,
      asciiTheme: asciiTheme,
      hiAnsiTheme: hiAnsiTheme,
      eastAsiaTheme: eastAsiaTheme,
      csTheme: csTheme,
      hint: hint,
    );
  }

  RunFonts withAsciiTheme(String? asciiTheme) {
    return RunFonts(
      ascii: ascii,
      hiAnsi: hiAnsi,
      eastAsia: eastAsia,
      cs: cs,
      asciiTheme: asciiTheme,
      hiAnsiTheme: hiAnsiTheme,
      eastAsiaTheme: eastAsiaTheme,
      csTheme: csTheme,
      hint: hint,
    );
  }

  RunFonts withHiAnsiTheme(String? hiAnsiTheme) {
    return RunFonts(
      ascii: ascii,
      hiAnsi: hiAnsi,
      eastAsia: eastAsia,
      cs: cs,
      asciiTheme: asciiTheme,
      hiAnsiTheme: hiAnsiTheme,
      eastAsiaTheme: eastAsiaTheme,
      csTheme: csTheme,
      hint: hint,
    );
  }

  RunFonts withEastAsiaTheme(String? eastAsiaTheme) {
    return RunFonts(
      ascii: ascii,
      hiAnsi: hiAnsi,
      eastAsia: eastAsia,
      cs: cs,
      asciiTheme: asciiTheme,
      hiAnsiTheme: hiAnsiTheme,
      eastAsiaTheme: eastAsiaTheme,
      csTheme: csTheme,
      hint: hint,
    );
  }

  RunFonts withCsTheme(String? csTheme) {
    return RunFonts(
      ascii: ascii,
      hiAnsi: hiAnsi,
      eastAsia: eastAsia,
      cs: cs,
      asciiTheme: asciiTheme,
      hiAnsiTheme: hiAnsiTheme,
      eastAsiaTheme: eastAsiaTheme,
      csTheme: csTheme,
      hint: hint,
    );
  }

  RunFonts withHint(String? hint) {
    return RunFonts(
      ascii: ascii,
      hiAnsi: hiAnsi,
      eastAsia: eastAsia,
      cs: cs,
      asciiTheme: asciiTheme,
      hiAnsiTheme: hiAnsiTheme,
      eastAsiaTheme: eastAsiaTheme,
      csTheme: csTheme,
      hint: hint,
    );
  }
  @override
  String build() {
    final builder = XMLBuilder();
    builder.runFonts(ascii, hiAnsi, cs, eastAsia, asciiTheme, hiAnsiTheme, csTheme, eastAsiaTheme, hint);
    return builder.build();
  }
}
// void main() {
//   final builder = RunFonts();
//   print(builder.build());
// }