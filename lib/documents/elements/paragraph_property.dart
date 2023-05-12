import '../../types/mod.dart';
import 'mod.dart';
import '../../xml_builder/mod.dart';
import '../build_xml.dart';

class ParagraphProperty implements BuildXML{
  RunProperty runProperty;
  ParagraphStyle? style;
  NumberingProperty? numberingProperty;
  Justification? alignment;
  Indent? indent;
  LineSpacing? lineSpacing;
  bool? keepNext;
  bool? keepLines;
  bool? pageBreakBefore;
  bool? widowControl;
  OutlineLvl? outlineLvl;
  SectionProperty? sectionProperty;
  List<Tab> tabs;
  String? divId;
  ParagraphPropertyChange? paragraphPropertyChange;

  ParagraphProperty({
    required this.runProperty,
    this.style,
    this.numberingProperty,
    this.alignment,
    this.indent,
    this.lineSpacing,
    this.keepNext,
    this.keepLines,
    this.pageBreakBefore,
    this.widowControl,
    this.outlineLvl,
    this.sectionProperty,
    this.tabs = const [],
    this.divId,
    this.paragraphPropertyChange,
  });

  factory ParagraphProperty.newParagraphProperty() {
    return ParagraphProperty(
      runProperty: RunProperty(),
      tabs: [],
    );
  }

  ParagraphProperty setAlignment(AlignmentType alignmentType) {
    alignment = Justification(alignmentType.name);
    return this;
  }

  ParagraphProperty setStyle(String styleId) {
    style = ParagraphStyle(styleId);
    return this;
  }

  ParagraphProperty setIndent([int? left,
    SpecialIndentType? specialIndent,
    int? end,
    int? startChars,]) {
    indent = Indent.newIndent(left, specialIndent, end, startChars);
    return this;
  }

  ParagraphProperty setNumbering({required NumberingId id, required IndentLevel level}) {
    numberingProperty = NumberingProperty.newNumberingProperty().addNum(id, level);
    return this;
  }

  ParagraphProperty setNumberingProperty(NumberingProperty np) {
    numberingProperty = np;
    return this;
  }

  ParagraphProperty setLineSpacing(LineSpacing spacing) {
    lineSpacing = spacing;
    return this;
  }

  ParagraphProperty setKeepNext(bool v) {
    keepNext = v;
    return this;
  }

  ParagraphProperty setKeepLines(bool v) {
    keepLines = v;
    return this;
  }

  ParagraphProperty setOutlineLvl(int v) {
    if (v >= 10) {
      // clamped
      outlineLvl = OutlineLvl.newOutlineLvl(9);
      return this;
    }
    outlineLvl = OutlineLvl.newOutlineLvl(v);
    return this;
  }

  ParagraphProperty setPageBreakBefore(bool v) {
    pageBreakBefore = v;
    return this;
  }

  ParagraphProperty setWidowControl(bool v) {
    widowControl = v;
    return this;
  }

  ParagraphProperty addTab(Tab t) {
    tabs.add(t);
    return this;
  }

  ParagraphProperty setSectionProperty(SectionProperty s) {
    sectionProperty = s;
    return this;
  }

  ParagraphProperty setParagraphPropertyChange(ParagraphPropertyChange p) {
    paragraphPropertyChange = p;
    return this;
  }

  ParagraphProperty setHangingChars(int chars) {
    if (indent != null) {
      indent = indent!.setHangingChars(chars);
    }
    return this;
  }

  ParagraphProperty setFirstLineChars(int chars) {
    if (indent != null) {
      indent = indent!.setFirstLineChars(chars);
    }
    return this;
  }
  @override
  String build() {
    XMLBuilder xmlBuilder =  XMLBuilder().openParagraphProperty()
    .addChild(runProperty)
    .addOptionalChild(style)
    .addOptionalChild(numberingProperty)
    .addOptionalChild(alignment)
    .addOptionalChild(indent)
    .addOptionalChild(lineSpacing)
    .addOptionalChild(outlineLvl)
    .addOptionalChild(paragraphPropertyChange);
    if(keepNext == true){
        xmlBuilder.keepNext();
    }
    if(keepLines == true){
      xmlBuilder.keepLines();
    }
    if(pageBreakBefore == true){
      xmlBuilder.pageBreakBefore();
    }
    if(widowControl == true){
      xmlBuilder.widowControl();
    }
    if(tabs.isNotEmpty){
      xmlBuilder.openTabs();
      for(Tab tab in tabs){
        xmlBuilder.tab(tab.val, tab.leader, tab.pos);
      }
      xmlBuilder.close();
    }
    return xmlBuilder.close().build();
  }
}

// void main() {
//   final builder = ParagraphProperty.newParagraphProperty().setIndent(20).setKeepNext(true);
//   print(builder.build());
// }