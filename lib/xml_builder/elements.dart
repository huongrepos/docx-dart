import 'package:xml/xml.dart';
import 'package:xml/xml_events.dart';

import '../types/mod.dart';
import 'mod.dart';

extension Elements on XMLBuilder {

  XMLBuilder openBody() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:body');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder basedOn(String val) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:basedOn', nest: () {
      builder.attribute('w:val', val);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder text(String text, bool preserveSpace) {
    XmlBuilder builder = XmlBuilder();
    final space = preserveSpace ? "preserve" : "default";
    builder.element('w:t', nest: () {
      builder.text(text);
      builder.attribute('xml:space', space);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder runFonts(
      String? ascii,
      String? hiAnsi,
      String? cs,
      String? eastAsia,
      String? asciiTheme,
      String? hiAnsiTheme,
      String? csTheme,
      String? eastAsiaTheme,
      String? hint,
      ) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:rFonts', nest: () {
      if (ascii != null) {
        builder.attribute('w:ascii', ascii);
      }
      if (hiAnsi != null) {
        builder.attribute('w:hAnsi', hiAnsi);
      }
      if (cs != null) {
        builder.attribute('w:cs', cs);
      }
      if (eastAsia != null) {
        builder.attribute('w:eastAsia', eastAsia);
      }
      if (asciiTheme != null) {
        builder.attribute('w:asciiTheme', asciiTheme);
      }
      if (hiAnsiTheme != null) {
        builder.attribute('w:hAnsiTheme', hiAnsiTheme);
      }
      if (csTheme != null) {
        builder.attribute('w:cstheme', csTheme);
      }
      if (eastAsiaTheme != null) {
        builder.attribute('w:eastAsiaTheme', eastAsiaTheme);
      }
      if (hint != null) {
        builder.attribute('w:hint', hint);
      }
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder deleteText(String text, bool preserveSpace) {
    XmlBuilder builder = XmlBuilder();
    final space = preserveSpace ? "preserve" : "default";
    builder.element('w:delText', nest: () {
      builder.text(text);
      builder.attribute('xml:space', space);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }

  XMLBuilder dataBinding(
      String? xpath,
      String? prefixMappings,
      String? storeItemId,
      ) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:dataBinding', nest: () {
      if (xpath != null) {
        builder.attribute('w:xpath', xpath);
      }
      if (prefixMappings != null) {
        builder.attribute('w:prefixMappings', prefixMappings);
      }
      if (storeItemId != null) {
        builder.attribute('w:storeItemID', storeItemId);
      }
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder openHyperlink(
      String? rid,
      String? anchor,
      String? history,
      ) {
    XmlBuilder builder = XmlBuilder();
    var actualHistory = history ?? 1;
    builder.element('w:hyperlink', nest: () {
      if (rid != null) {
        builder.attribute('r:id', rid);
      }
      if (anchor != null) {
        builder.attribute('w:anchor', anchor);
      }
      builder.attribute('w:history', actualHistory);

    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder openRun() {
    // List<XmlEventAttribute> listAttr = <XmlEventAttribute>[XmlEventAttribute("val", "okvalue", XmlAttributeType.SINGLE_QUOTE)];
    List<XmlEventAttribute> listAttr = [];
    stack.add('w:r');
    writer.add(XmlStartElementEvent("w:r", listAttr, false).toString());
    return this;
  }
  XMLBuilder openRunProperty() {
    // List<XmlEventAttribute> listAttr = <XmlEventAttribute>[XmlEventAttribute("val", "okvalue", XmlAttributeType.SINGLE_QUOTE)];
    List<XmlEventAttribute> listAttr = [];
    stack.add('w:rPr');
    writer.add(XmlStartElementEvent("w:rPr", listAttr, false).toString());
    return this;
  }
  XMLBuilder openRunPropertyDefault() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:rPrDefault');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder qFormat() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:qFormat');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder openDocDefaults() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:docDefaults');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder openStructuredTag() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:sdt');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder openStructuredTagContent() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:sdtContent');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder openStructuredTagProperty() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:sdtPr');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder alias() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:alias');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder outlineLvl(int val) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:outlineLvl', nest: () {
      builder.attribute('w:val', val);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder name(String val) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:name', nest: () {
      builder.attribute('w:val', val);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder justification(String val) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:jc', nest: () {
      builder.attribute('w:val', val);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder vertAlign(String val) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:vertAlign', nest: () {
      builder.attribute('w:val', val);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder paragraphStyle(String val) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:pStyle', nest: () {
      builder.attribute('w:val', val);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder runStyle(String val) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:rStyle', nest: () {
      builder.attribute('w:val', val);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder sz(String val) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:sz', nest: () {
      builder.attribute('w:val', val);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder szCs(String val) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:szCs', nest: () {
      builder.attribute('w:val', val);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder fieldCharacter(String fldCharType, bool dirty) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:fldChar', nest: () {
      builder.attribute('w:fldCharType', fldCharType);
      builder.attribute('w:dirty', dirty);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder openInstrText() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:instrText');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder openDeleteInstrText() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:delInstrText');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder textDirection(String val) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:textDirection', nest: () {
      builder.attribute('w:val', val);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder b(String val) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:b', nest: () {
      builder.attribute('w:val', val);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder bCs(String val) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:bCs', nest: () {
      builder.attribute('w:val', val);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder i(String val) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:i', nest: () {
      builder.attribute('w:val', val);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder iCs(String val) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:iCs', nest: () {
      builder.attribute('w:val', val);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder strike(String val) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:strike', nest: () {
      builder.attribute('w:val', val);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder openStyle(
      StyleType styleType,
      String id,
      ) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:style', nest: () {
      builder.attribute('w:type', styleType);
      builder.attribute('w:styleId', id);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder next(String val) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:next', nest: () {
      builder.attribute('w:val', val);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder link(String val) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:link', nest: () {
      builder.attribute('w:val', val);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder color(String val) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:color', nest: () {
      builder.attribute('w:val', val);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder highlight(String val) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:highlight', nest: () {
      builder.attribute('w:val', val);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder underline(String val) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:u', nest: () {
      builder.attribute('w:val', val);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder suffix() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:suff');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }

  XMLBuilder spacing(int s) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:spacing', nest: () {
      builder.attribute('w:val', s);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder lineSpacing(
      int? before,
      int? after,
      int? line,
      int? beforeLines,
      int? afterLines,
      LineSpacingType? spacingType,
      ) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:spacing', nest: () {
      if (before != null) {
        builder.attribute('w:before', before.toString());
      }
      if (after != null) {
        builder.attribute('w:after', after.toString());
      }
      if (beforeLines != null) {
        builder.attribute('w:beforeLines', beforeLines.toString());
      }
      if (afterLines != null) {
        builder.attribute('w:afterLines', afterLines.toString());
      }
      if (line != null) {
        builder.attribute('w:line', line.toString());
      }
      if (spacingType != null) {
        builder.attribute('w:lineRule', spacingType.name);

      }
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }

  XMLBuilder openTable() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:tbl');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder openTableProperty() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:tblPr');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder openTableGrid() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:tblGrid');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder openTableRow() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:tr');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder openTableRowProperty() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:trPr');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder openTableCell() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:tc');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder openTableCellProperty() {
    // List<XmlEventAttribute> listAttr = <XmlEventAttribute>[XmlEventAttribute("val", "okvalue", XmlAttributeType.SINGLE_QUOTE)];
    List<XmlEventAttribute> listAttr = [];
    stack.add('w:tcPr');
    writer.add(XmlStartElementEvent("w:tcPr", listAttr, false).toString());
    return this;
  }
  XMLBuilder openTableCellBorder() {
    // List<XmlEventAttribute> listAttr = <XmlEventAttribute>[XmlEventAttribute("val", "okvalue", XmlAttributeType.SINGLE_QUOTE)];
    List<XmlEventAttribute> listAttr = [];
    stack.add('w:tcBorders');
    writer.add(XmlStartElementEvent("w:tcBorders", listAttr, false).toString());
    return this;
  }
  XMLBuilder openTableBorder() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:tblBorders');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder openTableCellMargins() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:tblCellMar');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder tableLayout(String type) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:tblLayout', nest: () {
      builder.attribute('w:type', type);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder tableStyle() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:tblStyle');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder tableWidth() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:tblW');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder tableIndent() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:tblInd');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder gridColumn() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:gridCol');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder tableCellWidth(int width, String type) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:tcW', nest: () {
      builder.attribute('w:w', width);
      builder.attribute('w:type', type);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder tableRowHeight(String val, String hRule) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:trHeight', nest: () {
      builder.attribute('w:val', val);
      builder.attribute('w:hRule', hRule);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder gridSpan(int val) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:gridSpan', nest: () {
      builder.attribute('w:val', val);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder verticalMerge(String val) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:vMerge', nest: () {
      builder.attribute('w:val', val);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder verticalAlign(String val) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:vAlign', nest: () {
      builder.attribute('w:val', val);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder marginTop() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:top');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder marginLeft() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:left');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder marginBottom() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:bottom');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder marginRight() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:right');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder borderTop(String borderType, int size, int space, String color) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:top', nest: () {
      builder.attribute('w:val', borderType);
      builder.attribute('w:sz', size);
      builder.attribute('w:space', space);
      builder.attribute('w:color', color);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder borderLeft(String borderType, int size, int space, String color) {
    XmlBuilder builder = XmlBuilder();
      builder.element('w:left', nest: () {
      builder.attribute('w:val', borderType);
      builder.attribute('w:sz', size);
      builder.attribute('w:space', space);
      builder.attribute('w:color', color);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder borderBottom(String borderType, int size, int space, String color) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:bottom', nest: () {
      builder.attribute('w:val', borderType);
      builder.attribute('w:sz', size);
      builder.attribute('w:space', space);
      builder.attribute('w:color', color);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder borderRight(String borderType, int size, int space, String color) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:right', nest: () {
      builder.attribute('w:val', borderType);
      builder.attribute('w:sz', size);
      builder.attribute('w:space', space);
      builder.attribute('w:color', color);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder borderInsideH(String borderType, int size, int space, String color) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:insideH', nest: () {
      builder.attribute('w:val', borderType);
      builder.attribute('w:sz', size);
      builder.attribute('w:space', space);
      builder.attribute('w:color', color);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder borderInsideV(String borderType, int size, int space, String color) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:insideV', nest: () {
      builder.attribute('w:val', borderType);
      builder.attribute('w:sz', size);
      builder.attribute('w:space', space);
      builder.attribute('w:color', color);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder borderTl2br(String borderType, int size, int space, String color) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:tl2br', nest: () {
      builder.attribute('w:val', borderType);
      builder.attribute('w:sz', size);
      builder.attribute('w:space', space);
      builder.attribute('w:color', color);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder borderTr2bl(String borderType, int size, int space, String color) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:tr2bl', nest: () {
      builder.attribute('w:val', borderType);
      builder.attribute('w:sz', size);
      builder.attribute('w:space', space);
      builder.attribute('w:color', color);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder textBorder(
      String? borderType,
      int? size,
      String? color,
      int? space,
      ) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:bdr', nest: ()
    {
      if (borderType != null) {
        builder.attribute('w:val', borderType);
      }
      if (size != null) {
        builder.attribute('w:sz', size);
      }
      if (color != null) {
        builder.attribute('w:color', color);
      }
      if (space != null) {
        builder.attribute('w:space', space);
      }
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }

  ///
///

  XMLBuilder vanish() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:vanish');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder specVanish() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:specVanish');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }

  //
  XMLBuilder commentRangeEnd(String id) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:commentRangeEnd', nest: () {
      builder.attribute('w:id', id);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder commentRangeStart(String id) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:commentRangeStart', nest: () {
      builder.attribute('w:id', id);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder commentReference(String id) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:commentReference', nest: () {
      builder.attribute('w:id', id);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }

  //
  XMLBuilder tab(
      TabValueType? val,
      TabLeaderType? leader,
      int? pos,) {
    String vString = val?.name ?? '';
    String leaderString = leader?.name ?? '';
    String posString = pos?.toString() ?? '';
    XmlBuilder builder = XmlBuilder();
    builder.element('w:jc', nest: () {
      if (val != null) {
        builder.attribute('w:val', vString);
      }
      if (leader != null) {
        builder.attribute('w:leader', leaderString);
      }
      if (pos != null) {
        builder.attribute('w:pos', posString);
      }
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  //
  XMLBuilder numId(int val) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:numId', nest: () {
      builder.attribute('w:val', val);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder indentLevel(int val) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:ilvl', nest: () {
      builder.attribute('w:val', val);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }

  XMLBuilder openNumberingProperty() {
    // List<XmlEventAttribute> listAttr = <XmlEventAttribute>[XmlEventAttribute("val", "okvalue", XmlAttributeType.SINGLE_QUOTE)];
    List<XmlEventAttribute> listAttr = [];
    stack.add('w:numPr');
    writer.add(XmlStartElementEvent("w:numPr", listAttr, false).toString());
    return this;
  }
  XMLBuilder indent(
      int? start,
      SpecialIndentType? specialIndent,
      int? end,
      int? startChars,
      ) {
    XmlBuilder builder = XmlBuilder();
    final startStr = start?.toString() ?? '0';
    final endStr = end?.toString() ?? '0';
    final startCharsStr = startChars?.toString() ?? '0';

    builder.element(
      'w:ind',
      nest: () {
        builder.attribute('w:left', startStr);
        builder.attribute('w:right', endStr);

        if (startChars != null) {
          builder.attribute('w:leftChars', startCharsStr);
        }

        switch (specialIndent) {
          case SpecialIndentType.firstLine:
            builder.attribute('w:firstLine', specialIndent?.name);
            break;
          case SpecialIndentType.hanging:
            builder.attribute('w:hanging', specialIndent?.name);
            break;
          default:
            break;
        }
      },
    );
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder openParagraphProperty() {
    // List<XmlEventAttribute> listAttr = <XmlEventAttribute>[XmlEventAttribute("val", "okvalue", XmlAttributeType.SINGLE_QUOTE)];
    List<XmlEventAttribute> listAttr = [];
    stack.add('w:pPr');
    writer.add(XmlStartElementEvent("w:pPr", listAttr, false).toString());
    return this;
  }
  XMLBuilder keepNext() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:keepNext');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder keepLines() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:keepLines');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder pageBreakBefore() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:pageBreakBefore');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder widowControl() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:widowControl');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder openTabs() {
    // List<XmlEventAttribute> listAttr = <XmlEventAttribute>[XmlEventAttribute("val", "okvalue", XmlAttributeType.SINGLE_QUOTE)];
    List<XmlEventAttribute> listAttr = [];
    stack.add('w:tabs');
    writer.add(XmlStartElementEvent("w:tabs", listAttr, false).toString());
    return this;
  }
  XMLBuilder openParagraphPropertyChange(String id, String author, String date) {
    List<XmlEventAttribute> listAttr = <XmlEventAttribute>[
      XmlEventAttribute("w:id", id, XmlAttributeType.DOUBLE_QUOTE),
      XmlEventAttribute("w:author", author, XmlAttributeType.DOUBLE_QUOTE),
      XmlEventAttribute("w:date", date, XmlAttributeType.DOUBLE_QUOTE),
    ];
    stack.add('w:pPrChange');
    writer.add(XmlStartElementEvent("w:pPrChange", listAttr, false).toString());
    return this;
  }
  XMLBuilder openParagraph(String paraId) {
    List<XmlEventAttribute> listAttr = <XmlEventAttribute>[
      XmlEventAttribute("w14:paraId", paraId, XmlAttributeType.DOUBLE_QUOTE),
    ];
    stack.add('w:p');
    writer.add(XmlStartElementEvent("w:p", listAttr, false).toString());
    return this;
  }
  XMLBuilder br(String type) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:br', nest: () {
      builder.attribute('w:type', type);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder shd(String val, String color, String fill) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:shd', nest: () {
      builder.attribute('w:val', val);
      builder.attribute('w:color', color);
      builder.attribute('w:fill', fill);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
}