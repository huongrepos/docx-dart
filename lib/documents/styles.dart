import 'package:docx_dart/types/mod.dart';
import 'package:docx_dart/xml_builder/styles.dart';

import 'elements/mod.dart';
import '../../xml_builder/mod.dart';
import 'build_xml.dart';

class Styles implements BuildXML{
  DocDefaults docDefaults;
  List<Style> styles;

  Styles({required this.docDefaults, this.styles = const []});
  factory Styles.defaultValues() => Styles(docDefaults: DocDefaults.defaultValues());

  Styles addStyle(Style style) {
    List<Style> newStyles = List.from(styles)..add(style);
    return Styles(docDefaults: docDefaults, styles: newStyles);
  }

  Styles defaultSize(int size) {
    DocDefaults newDefaults = docDefaults.size(size);
    return Styles(docDefaults: newDefaults, styles: styles);
  }

  Styles defaultSpacing(int spacing) {
    DocDefaults newDefaults = docDefaults.spacing(spacing);
    return Styles(docDefaults: newDefaults, styles: styles);
  }

  Styles defaultFonts(RunFonts font) {
    DocDefaults newDefaults = docDefaults.fonts(font);
    return Styles(docDefaults: newDefaults, styles: styles);
  }

  Styles setDocDefaults(DocDefaults newDefaults) {
    return Styles(docDefaults: newDefaults, styles: styles);
  }

  Style? findStyleById(String id) {
    return styles.firstWhere((s) => s.styleId == id);
  }

  Map<String, int> createHeadingStyleMap() {
    return Map.fromEntries(styles.where((s) => s.name.isHeading()).map((s) {
      int? n = s.name.getHeadingNumber();
      if (n != null) {
        return MapEntry(s.styleId, n);
      } else {
        return null;
      }
    }).whereType<MapEntry<String, int>>());
  }
  @override
  String build() {
    late Style normal = Style.newStyle("Normal", StyleType.paragraph).withName("Normal");
    return XMLBuilder().openStyles()
        .addChild(docDefaults)
        .addChild(normal)
        .addChildren(styles)
        .close().build();
  }
}

extension HeadingNameExtension on String {
  bool isHeading() {
    return RegExp(r'^Heading [0-9]+$').hasMatch(this);
  }

  int? getHeadingNumber() {
    if (isHeading()) {
      return int.parse(substring(8));
    } else {
      return null;
    }
  }
}
// void main() {
//   final builder = Styles.defaultValues().addStyle(Style.newStyle("Title", StyleType.paragraph).withName("TitleName"));
//   print(builder.build());
// }