import '../../types/mod.dart';
import '../build_xml.dart';
import 'mod.dart';
class Style implements BuildXML{
  late String styleId;
  late Name name;
  late StyleType styleType;
  late RunProperty runProperty;
  late ParagraphProperty paragraphProperty;
  late TableProperty tableProperty;
  late TableCellProperty tableCellProperty;
  late BasedOn basedOn;
  late Next next;
  late Link link;

  Style({
    required this.styleId,
    required this.styleType,
    required this.name,
    required this.runProperty,
    required this.paragraphProperty,
    required this.tableProperty,
    required this.tableCellProperty,
    required this.basedOn,
    required this.next,
    required this.link,
  });

  Style newStyle(String styleId, StyleType styleType){
        return Style(
        styleId: styleId,
        styleType: styleType,
        name: Name(""),
        runProperty: RunProperty(),
        paragraphProperty: ParagraphProperty.newParagraphProperty(),
        tableProperty: TableProperty.defaultSettings(),
        tableCellProperty: TableCellProperty(),
        basedOn: basedOn,
        next: next,
        link: link,
        );
  }


  Style withName(String name) {
    return Style(
      styleId: styleId,
      styleType: styleType,
      name: Name(name),
      runProperty: runProperty,
      paragraphProperty: paragraphProperty,
      tableProperty: tableProperty,
      tableCellProperty: tableCellProperty,
      basedOn: basedOn,
      next: next,
      link: link,
    );
  }

  Style withBasedOn(String base) {
    return Style(
      styleId: styleId,
      styleType: styleType,
      name: name,
      runProperty: runProperty,
      paragraphProperty: paragraphProperty,
      tableProperty: tableProperty,
      tableCellProperty: tableCellProperty,
      basedOn: BasedOn(base),
      next: next,
      link: link,
    );
  }

  Style withNext(String nextId) {
    return Style(
      styleId: styleId,
      styleType: styleType,
      name: name,
      runProperty: runProperty,
      paragraphProperty: paragraphProperty,
      tableProperty: tableProperty,
      tableCellProperty: tableCellProperty,
      basedOn: basedOn,
      next: Next(nextId),
      link: link,
    );
  }

  Style withLink(String link) {
    return Style(
      styleId: styleId,
      styleType: styleType,
      name: name,
      runProperty: runProperty,
      paragraphProperty: paragraphProperty,
      tableProperty: tableProperty,
      tableCellProperty: tableCellProperty,
      basedOn: basedOn,
      next: next,
      link: Link(link),
    );
  }

  Style withSize(int size) {
    return Style(
      styleId: styleId,
      styleType: styleType,
      name: name,
      runProperty: runProperty.withSize(size),
      paragraphProperty: paragraphProperty,
      tableProperty: tableProperty,
      tableCellProperty: tableCellProperty,
      basedOn: basedOn,
      next: next,
      link: link,
    );
  }

  Style withColor(String color) {
    return Style(
      styleId: styleId,
      styleType: styleType,
      name: name,
      runProperty: runProperty.withColor(color),
      paragraphProperty: paragraphProperty,
      tableProperty: tableProperty,
      tableCellProperty: tableCellProperty,
      basedOn: basedOn,
      next: next,
      link: link,
    );
  }

  Style withHighlight(String color) {
    return Style(
      styleId: styleId,
      styleType: styleType,
      name: name,
      runProperty: runProperty.withHighlight(color),
      paragraphProperty: paragraphProperty,
      tableProperty: tableProperty,
      tableCellProperty: tableCellProperty,
      basedOn: basedOn,
      next: next,
      link: link,
    );
  }

  Style withBold() {
    return Style(
      styleId: styleId,
      styleType: styleType,
      name: name,
      runProperty: runProperty.makeBold(),
      paragraphProperty: paragraphProperty,
      tableProperty: tableProperty,
      tableCellProperty: tableCellProperty,
      basedOn: basedOn,
      next: next,
      link: link,
    );
  }

  Style withItalic() {
    return Style(
      styleId: styleId,
      styleType: styleType,
      name: name,
      runProperty: runProperty.makeItalic(),
      paragraphProperty: paragraphProperty,
      tableProperty: tableProperty,
      tableCellProperty: tableCellProperty,
      basedOn: basedOn,
      next: next,
      link: link,
    );
  }

  Style withUnderline(String lineType) {
    return Style(
      styleId: styleId,
      styleType: styleType,
      name: name,
      runProperty: runProperty.withUnderline(lineType),
      paragraphProperty: paragraphProperty,
      tableProperty: tableProperty,
      tableCellProperty: tableCellProperty,
      basedOn: basedOn,
      next: next,
      link: link,
    );
  }

  Style withVanish() {
    return Style(
      styleId: styleId,
      styleType: styleType,
      name: name,
      runProperty: runProperty.makeVanish(),
      paragraphProperty: paragraphProperty,
      tableProperty: tableProperty,
      tableCellProperty: tableCellProperty,
      basedOn: basedOn,
      next: next,
      link: link,
    );
  }

  Style withTextBorder(TextBorder border) {
    return Style(
      styleId: styleId,
      styleType: styleType,
      name: name,
      runProperty: runProperty.withTextBorder(border),
      paragraphProperty: paragraphProperty,
      tableProperty: tableProperty,
      tableCellProperty: tableCellProperty,
      basedOn: basedOn,
      next: next,
      link: link,
    );
  }

  Style withFonts(RunFonts fonts) {
    return Style(
      styleId: styleId,
      styleType: styleType,
      name: name,
      runProperty: runProperty.withFonts(fonts),
      paragraphProperty: paragraphProperty,
      tableProperty: tableProperty,
      tableCellProperty: tableCellProperty,
      basedOn: basedOn,
      next: next,
      link: link,
    );
  }

  Style withAlignment(AlignmentType alignmentType) {
    return Style(
      styleId: styleId,
      styleType: styleType,
      name: name,
      runProperty: runProperty,
      paragraphProperty: paragraphProperty.setAlignment(alignmentType),
      tableProperty: tableProperty,
      tableCellProperty: tableCellProperty,
      basedOn: basedOn,
      next: next,
      link: link,
    );
  }

  Style withIndent({
    int? left,
    SpecialIndentType? specialIndent,
    int? end,
    int? startChars,
  }) {
    return Style(
      styleId: styleId,
      styleType: styleType,
      name: name,
      runProperty: runProperty,
      paragraphProperty: paragraphProperty.setIndent(left, specialIndent, end, startChars),
      tableProperty: tableProperty,
      tableCellProperty: tableCellProperty,
      basedOn: basedOn,
      next: next,
      link: link,
    );
  }

  Style withHangingChars(int chars) {
    return Style(
      styleId: styleId,
      styleType: styleType,
      name: name,
      runProperty: runProperty,
      paragraphProperty: paragraphProperty.setHangingChars(chars),
      tableProperty: tableProperty,
      tableCellProperty: tableCellProperty,
      basedOn: basedOn,
      next: next,
      link: link,
    );
  }

  Style withFirstLineChars(int chars) {
    return Style(
      styleId: styleId,
      styleType: styleType,
      name: name,
      runProperty: runProperty,
      paragraphProperty: paragraphProperty.setFirstLineChars(chars),
      tableProperty: tableProperty,
      tableCellProperty: tableCellProperty,
      basedOn: basedOn,
      next: next,
      link: link,
    );
  }

  Style withOutlineLvl(int lvl) {
    return Style(
      styleId: styleId,
      styleType: styleType,
      name: name,
      runProperty: runProperty,
      paragraphProperty: paragraphProperty.setOutlineLvl(lvl),
      tableProperty: tableProperty,
      tableCellProperty: tableCellProperty,
      basedOn: basedOn,
      next: next,
      link: link,
    );
  }

  Style withTableProperty(TableProperty p) {
    return Style(
      styleId: styleId,
      styleType: styleType,
      name: name,
      runProperty: runProperty,
      paragraphProperty: paragraphProperty,
      tableProperty: p,
      tableCellProperty: tableCellProperty,
      basedOn: basedOn,
      next: next,
      link: link,
    );
  }

  // Style withTableIndent(int v) {
  //   return Style(
  //       styleId: styleId