import '../types/mod.dart';
import 'mod.dart';

extension Elements on XMLBuilder {

  XMLBuilder openBody() {
    builder.element('w:body');
    return this;
  }
  XMLBuilder basedOn() {
    builder.element('w:basedOn');
    return this;
  }
  XMLBuilder text(String text, bool preserveSpace) {
    final space = preserveSpace ? "preserve" : "default";
    builder.element('a:picLocks', nest: () {
      builder.attribute('xml:space', space);
    });
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
    return this;
  }
  XMLBuilder deleteText(String text, bool preserveSpace) {
    final space = preserveSpace ? "preserve" : "default";
    builder.element('w:delText', nest: () {
      builder.attribute('xml:space', space);
    });
    return this;
  }

  XMLBuilder dataBinding(
      String? xpath,
      String? prefixMappings,
      String? storeItemId,
      ) {
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
    return this;
  }
  XMLBuilder openHyperlink(
      String? rid,
      String? anchor,
      String? history,
      ) {
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
    return this;
  }
  XMLBuilder openRun() {
    builder.element('w:r');
    return this;
  }
  XMLBuilder openRunProperty() {
    builder.element('w:rPr');
    return this;
  }
  XMLBuilder openRunPropertyDefault() {
    builder.element('w:rPrDefault');
    return this;
  }
  XMLBuilder qFormat() {
    builder.element('w:qFormat');
    return this;
  }
  XMLBuilder openParagraph(String paraId) {
    builder.element('w:p', nest: () {
      builder.attribute('w14:paraId', paraId);
    });
    return this;
  }
  XMLBuilder openParagraphProperty() {
    builder.element('w:pPr');
    return this;
  }
  XMLBuilder openDocDefaults() {
    builder.element('w:docDefaults');
    return this;
  }
  XMLBuilder openStructuredTag() {
    builder.element('w:sdt');
    return this;
  }
  XMLBuilder openStructuredTagContent() {
    builder.element('w:sdtContent');
    return this;
  }
  XMLBuilder openStructuredTagProperty() {
    builder.element('w:sdtPr');
    return this;
  }
  XMLBuilder alias() {
    builder.element('w:alias');
    return this;
  }
  XMLBuilder outlineLvl() {
    builder.element('w:outlineLvl');
    return this;
  }
  XMLBuilder name() {
    builder.element('w:name');
    return this;
  }
  XMLBuilder justification() {
    builder.element('w:jc');
    return this;
  }
  XMLBuilder vertAlign(String val) {
    builder.element('w:vertAlign', nest: () {
      builder.attribute('w:val', val);
    });
    return this;
  }
  XMLBuilder paragraphStyle() {
    builder.element('w:pStyle');
    return this;
  }
  XMLBuilder runStyle(String val) {
    builder.element('w:rStyle', nest: () {
      builder.attribute('w:val', val);
    });
    return this;
  }
  XMLBuilder sz(String val) {
    builder.element('w:sz', nest: () {
      builder.attribute('w:val', val);
    });
    return this;
  }
  XMLBuilder szCs(String val) {
    builder.element('w:szCs', nest: () {
      builder.attribute('w:val', val);
    });
    return this;
  }
  XMLBuilder fieldCharacter(String fldCharType, String dirty) {
    builder.element('w:fldChar', nest: () {
      builder.attribute('w:fldCharType', fldCharType);
      builder.attribute('w:dirty', dirty);
    });
    return this;
  }
  XMLBuilder openInstrText() {
    builder.element('w:instrText');
    return this;
  }
  XMLBuilder openDeleteInstrText() {
    builder.element('w:delInstrText');
    return this;
  }
  XMLBuilder textDirection(String val) {
    builder.element('w:textDirection', nest: () {
      builder.attribute('w:val', val);
    });
    return this;
  }
  XMLBuilder b(String val) {
    builder.element('w:b', nest: () {
      builder.attribute('w:val', val);
    });
    return this;
  }
  XMLBuilder bCs(String val) {
    builder.element('w:bCs', nest: () {
      builder.attribute('w:val', val);
    });
    return this;
  }
  XMLBuilder i(String val) {
    builder.element('w:i', nest: () {
      builder.attribute('w:val', val);
    });
    return this;
  }
  XMLBuilder iCs(String val) {
    builder.element('w:iCs', nest: () {
      builder.attribute('w:val', val);
    });
    return this;
  }
  XMLBuilder strike(String val) {
    builder.element('w:strike', nest: () {
      builder.attribute('w:val', val);
    });
    return this;
  }
  XMLBuilder openStyle(
      StyleType styleType,
      String id,
      ) {
    builder.element('w:style', nest: () {
      builder.attribute('w:type', styleType);
      builder.attribute('w:styleId', id);
    });
    return this;
  }
  XMLBuilder next() {
    builder.element('w:next');
    return this;
  }
  XMLBuilder link() {
    builder.element('w:link');
    return this;
  }
  XMLBuilder color(String val) {
    builder.element('w:color', nest: () {
      builder.attribute('w:val', val);
    });
    return this;
  }
  XMLBuilder highlight(String val) {
    builder.element('w:highlight', nest: () {
      builder.attribute('w:val', val);
    });
    return this;
  }
  XMLBuilder underline(String val) {
    builder.element('w:u', nest: () {
      builder.attribute('w:val', val);
    });
    return this;
  }
  XMLBuilder suffix() {
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
    builder.element('w:spacing', nest: () {
      builder.attribute('w:val', s);
    });
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
    return this;
  }

  XMLBuilder openTable() {
    builder.element('w:tbl');
    return this;
  }
  XMLBuilder openTableProperty() {
    builder.element('w:tblPr');
    return this;
  }
  XMLBuilder openTableGrid() {
    builder.element('w:tblGrid');
    return this;
  }
  XMLBuilder openTableRow() {
    builder.element('w:tr');
    return this;
  }
  XMLBuilder openTableRowProperty() {
    builder.element('w:trPr');
    return this;
  }
  XMLBuilder openTableCell() {
    builder.element('w:tc');
    return this;
  }
  XMLBuilder openTableCellProperty() {
    builder.element('w:tcPr');
    return this;
  }
  XMLBuilder openTableCellBorder() {
    builder.element('w:tcBorders');
    return this;
  }
  XMLBuilder openTableBorder() {
    builder.element('w:tblBorders');
    return this;
  }
  XMLBuilder openTableCellMargins() {
    builder.element('w:tblCellMar');
    return this;
  }
  XMLBuilder tableLayout(String type) {
    builder.element('w:tblLayout', nest: () {
      builder.attribute('w:type', type);
    });
    return this;
  }
  XMLBuilder tableStyle() {
    builder.element('w:tblStyle');
    return this;
  }
  XMLBuilder tableWidth() {
    builder.element('w:tblW');
    return this;
  }
  XMLBuilder tableIndent() {
    builder.element('w:tblInd');
    return this;
  }
  XMLBuilder gridColumn() {
    builder.element('w:gridCol');
    return this;
  }
  XMLBuilder tableCellWidth() {
    builder.element('w:tcW');
    return this;
  }
  XMLBuilder tableRowHeight(String val, String hRule) {
    builder.element('w:trHeight', nest: () {
      builder.attribute('w:val', val);
      builder.attribute('w:hRule', hRule);
    });
    return this;
  }
  XMLBuilder gridSpan() {
    builder.element('w:gridSpan');
    return this;
  }
  XMLBuilder verticalMerge() {
    builder.element('w:vMerge');
    return this;
  }
  XMLBuilder verticalAlign() {
    builder.element('w:vAlign');
    return this;
  }
  XMLBuilder marginTop() {
    builder.element('w:top');
    return this;
  }
  XMLBuilder marginLeft() {
    builder.element('w:left');
    return this;
  }
  XMLBuilder marginBottom() {
    builder.element('w:bottom');
    return this;
  }
  XMLBuilder marginRight() {
    builder.element('w:right');
    return this;
  }
  XMLBuilder borderTop() {
    builder.element('w:top');
    return this;
  }
  XMLBuilder borderLeft() {
    builder.element('w:left');
    return this;
  }
  XMLBuilder borderBottom() {
    builder.element('w:bottom');
    return this;
  }
  XMLBuilder borderRight() {
    builder.element('w:right');
    return this;
  }
  XMLBuilder borderInsideH() {
    builder.element('w:insideH');
    return this;
  }
  XMLBuilder borderInsideV() {
    builder.element('w:insideV');
    return this;
  }
  XMLBuilder borderTl2br() {
    builder.element('w:tl2br');
    return this;
  }
  XMLBuilder borderTr2bl() {
    builder.element('w:tr2bl');
    return this;
  }
  XMLBuilder textBorder(
      String? borderType,
      int? size,
      String? color,
      int? space,
      ) {
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
    return this;
  }

  ///
///

  XMLBuilder vanish() {
    builder.element('w:vanish');
    return this;
  }
  XMLBuilder specVanish() {
    builder.element('w:specVanish');
    return this;
  }
}