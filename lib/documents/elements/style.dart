import '../../types/mod.dart';
import '../build_xml.dart';
import '../../xml_builder/mod.dart';
import 'mod.dart';
class Style implements BuildXML {
  late String styleId;
  late Name name;
  late StyleType styleType;
  late RunProperty runProperty;
  late ParagraphProperty paragraphProperty;
  late TableProperty tableProperty;
  late TableCellProperty tableCellProperty;
  late BasedOn? basedOn;
  late Next? next;
  late Link? link;

  Style({
    required this.styleId,
    required this.styleType,
    required this.name,
    required this.runProperty,
    required this.paragraphProperty,
    required this.tableProperty,
    required this.tableCellProperty,
     this.basedOn,
     this.next,
     this.link
  });

  factory Style.newStyle(String styleId, StyleType styleType)=>Style(
    styleId: styleId,
    styleType: styleType,
    name: Name(""),
    runProperty: RunProperty(),
    paragraphProperty: ParagraphProperty.newParagraphProperty(),
    tableProperty: TableProperty.defaultSettings(),
    tableCellProperty: TableCellProperty(),

  );


  Style withName(String name) {
    this.name = Name(name);
    return this;
  }

  Style withBasedOn(String base) {
    basedOn = BasedOn(base);
    return this;
  }

  Style withNext(String nextId) {
    next = Next(nextId);
    return this;
  }

  Style withLink(String link) {
    this.link = Link(link);
    return this;
  }

  Style withSize(int size) {
    runProperty = runProperty.withSize(size);
    return this;
  }

  Style withColor(String color) {
    runProperty = runProperty.withColor(color);
    return this;
  }

  Style withHighlight(String color) {
    runProperty = runProperty.withHighlight(color);
    return this;
  }

  Style withBold() {
    runProperty = runProperty.makeBold();
    return this;
  }

  Style withItalic() {
    runProperty = runProperty.makeItalic();
    return this;
  }

  Style withUnderline(String lineType) {
    runProperty = runProperty.withUnderline(lineType);
    return this;
  }

  Style withVanish() {
    runProperty = runProperty.makeVanish();
    return this;
  }

  Style withTextBorder(TextBorder border) {
    runProperty = runProperty.withTextBorder(border);
    return this;
  }

  Style withFonts(RunFonts fonts) {
    runProperty = runProperty.withFonts(fonts);
    return this;
  }

  Style withAlignment(AlignmentType alignmentType) {
    paragraphProperty = paragraphProperty.setAlignment(alignmentType);
    return this;
  }

  Style withIndent({
    int? left,
    SpecialIndentType? specialIndent,
    int? end,
    int? startChars,
  }) {
    paragraphProperty = paragraphProperty.setIndent(
    left, specialIndent, end, startChars);
    return this;
  }

  Style withHangingChars(int chars) {
    paragraphProperty = paragraphProperty.setHangingChars(chars);
    return this;
  }

  Style withFirstLineChars(int chars) {
    paragraphProperty = paragraphProperty.setFirstLineChars(chars);
    return this;
  }

  Style withOutlineLvl(int lvl) {
    paragraphProperty = paragraphProperty.setOutlineLvl(lvl);
    return this;
  }

  Style withTableProperty(TableProperty p) {
    tableProperty = p;
    return this;
  }
  Style withTableIndent(int v){
    tableProperty = tableProperty.setIndent(v);
    return this;
  }
  Style withTableAlign(TableAlignmentType v){
    tableProperty = tableProperty.align(v);
    return this;
  }
  Style style(String s){
    tableProperty = tableProperty.setStyle(s);
    return this;
  }
  Style layout(TableLayoutType t){
    tableProperty = tableProperty.setLayout(t);
    return this;
  }
  Style width(int v, WidthType t){
    tableProperty = tableProperty.setWidth(v, t);
    return this;
  }
  Style margins(TableCellMargins margins){
    tableProperty = tableProperty.setMargins(margins);
    return this;
  }
  Style setBorders(TableBorders borders){
    tableProperty = tableProperty.setBorders(borders);
    return this;
  }
  Style setBorder(TableBorder border){
    tableProperty = tableProperty.setBorder(border);
    return this;
  }
  Style clearBorder(TableBorderPosition position){
    tableProperty = tableProperty.clearBorder(position);
    return this;
  }
  Style clearAllBorder(){
    tableProperty = tableProperty.clearAllBorder();
    return this;
  }
  Style setTableCellProperty(TableCellProperty p){
    tableCellProperty = p;
    return this;
  }

  @override
  String build() {
    XMLBuilder xmlBuilder = XMLBuilder();
    xmlBuilder.openStyle(styleType.name, styleId)
        .addChild(name)
        .addChild(runProperty)
        .addChild(paragraphProperty);
    if(styleType == StyleType.table){
      xmlBuilder.addChild(tableCellProperty);
      xmlBuilder.addChild(tableProperty);
    }
    return xmlBuilder.addOptionalChild(next).addOptionalChild(link).addOptionalChild(basedOn).close().build();
  }
}
// void main() {
//   final builder = Style.newStyle("Heading", StyleType.paragraph).withName("OK");
//   print(builder.build());
// }