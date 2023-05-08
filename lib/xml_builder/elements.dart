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
  XMLBuilder basedOn() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:basedOn');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder text(String text, bool preserveSpace) {
    XmlBuilder builder = XmlBuilder();
    final space = preserveSpace ? "preserve" : "default";
    builder.element('a:picLocks', nest: () {
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
  XMLBuilder openParagraph(String paraId) {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:p', nest: () {
      builder.attribute('w14:paraId', paraId);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder openParagraphProperty() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:pPr');
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
  XMLBuilder outlineLvl() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:outlineLvl');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder name() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:name');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder justification() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:jc');
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
  XMLBuilder paragraphStyle() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:pStyle');
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
  XMLBuilder fieldCharacter(String fldCharType, String dirty) {
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
  XMLBuilder next() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:next');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder link() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:link');
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
    return this;
  }
  // XMLBuilder indent(
  //     int? start,
  //     SpecialIndentType? specialIndent,
  //     int end,
  //     int? startChars,
  //     ) {
  //   var startValue = start?.toString() ?? '0';
  //   var startCharsValue = startChars?.toString() ?? '0';
  //   builder.element('w:ind', nest: () {
  //     builder.attribute('w:left', startValue);
  //     builder.attribute('w:right', end);
  //     if (startChars != null) {
  //       builder.attribute('w:leftChars', startCharsValue);
  //     }
  //     if (specialIndent != null) {
  //       switch (specialIndent) {
  //         case SpecialIndentType.FirstLine:
  //           builder.attribute('w:firstLine', specialIndent.value.toString());
  //           break;
  //         case SpecialIndentType.Hanging:
  //           builder.attribute('w:hanging', specialIndent.value.toString());
  //           break;
  //       }
  //     }
  //   });
  //   return this;
  // }
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
        switch (spacingType) {
          case LineSpacingType.auto:
            builder.attribute('w:lineRule', 'auto');
            break;
          case LineSpacingType.atLeast:
            builder.attribute('w:lineRule', 'atLeast');
            break;
          case LineSpacingType.exact:
            builder.attribute('w:lineRule', 'exact');
            break;
        }
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
    XmlBuilder builder = XmlBuilder();
    builder.element('w:tcPr');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder openTableCellBorder() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:tcBorders');
    writer.add(builder.buildDocument().toXmlString());
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
  XMLBuilder tableCellWidth() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:tcW');
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
  XMLBuilder gridSpan() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:gridSpan');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder verticalMerge() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:vMerge');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder verticalAlign() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:vAlign');
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
  XMLBuilder borderTop() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:top');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder borderLeft() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:left');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder borderBottom() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:bottom');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder borderRight() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:right');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder borderInsideH() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:insideH');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder borderInsideV() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:insideV');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder borderTl2br() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:tl2br');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder borderTr2bl() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:tr2bl');
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
}