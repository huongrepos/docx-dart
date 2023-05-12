import '../../utils/string_utils.dart';
import '../../types/mod.dart';
import 'mod.dart';
import '../../xml_builder/mod.dart';
import '../build_xml.dart';

class Paragraph implements BuildXML{
  String id;
  List<ParagraphChild> children;
  ParagraphProperty property;
  bool hasNumbering;

  Paragraph({
    required this.id,
    required this.children,
    required this.property,
    required this.hasNumbering,
  });

  factory Paragraph.defaultPara() => Paragraph(
    id: generateParaId(),
    children: [],
    property: ParagraphProperty.newParagraphProperty(),
    hasNumbering: false,
  );

  Paragraph getId(String id) {
    this.id = id;
    return this;
  }

  List<ParagraphChild> getChildren() {
    return children;
  }

  Paragraph addRun(Run run) {
    children.add(ParagraphChild(run));
    return this;
  }

  Paragraph unshiftRun(Run run) {
    children.insert(0, ParagraphChild(run));
    return this;
  }
  // Paragraph wrapByBookmark(int id, String name) {
  //   children.insert(0, ParagraphChild.bookmarkStart(BookmarkStart(id, name)));
  //   children.add(ParagraphChild(BookmarkEnd(id)));
  //   return this;
  // }
  //
  // Paragraph addHyperlink(Hyperlink link) {
  //   children.add(ParagraphChild(link));
  //   return this;
  // }
  //
  // Paragraph addStructuredDataTag(StructuredDataTag t) {
  //   children.add(ParagraphChild(t));
  //   return this;
  // }

  Paragraph addInsert(Insert insert) {
    children.add(ParagraphChild(insert));
    return this;
  }

  Paragraph addDelete(Delete delete) {
    children.add(ParagraphChild(delete));
    return this;
  }
  // Paragraph addBookmarkStart(int id, String name) {
  //   children.add(ParagraphChild(BookmarkStart(id, name)));
  //   return this;
  // }
  //
  // Paragraph addBookmarkEnd(int id) {
  //   children.add(ParagraphChild(BookmarkEnd(id)));
  //   return this;
  // }
  //
  // Paragraph addCommentStart(Comment comment) {
  //   children.add(ParagraphChild(CommentRangeStart(comment)));
  //   return this;
  // }

  Paragraph addCommentEnd(int id) {
    children.add(ParagraphChild(CommentRangeEnd(id)));
    return this;
  }

  Paragraph align(AlignmentType alignmentType) {
    property = property.setAlignment(alignmentType);
    return this;
  }

  Paragraph style(String styleId) {
    property = property.setStyle(styleId);
    return this;
  }

  Paragraph keepNext(bool v) {
    property = property.setKeepNext(v);
    return this;
  }

  Paragraph keepLines(bool v) {
    property = property.setKeepLines(v);
    return this;
  }

  Paragraph outlineLvl(int v) {
    property = property.setOutlineLvl(v);
    return this;
  }

  Paragraph pageBreakBefore(bool v) {
    property = property.setPageBreakBefore(v);
    return this;
  }

  Paragraph widowControl(bool v) {
    property = property.setWidowControl(v);
    return this;
  }

  Paragraph sectionProperty(SectionProperty s) {
    property = property.setSectionProperty(s);
    return this;
  }

  Paragraph addTab(Tab t) {
    property = property.addTab(t);
    return this;
  }
  Paragraph indent({int? left, SpecialIndentType? specialIndent, int? end, int? startChars}) {
    property = property.setIndent(left, specialIndent, end, startChars);
    return this;
  }

  Paragraph hangingChars(int chars) {
    property = property.setHangingChars(chars);
    return this;
  }

  Paragraph firstLineChars(int chars) {
    property = property.setFirstLineChars(chars);
    return this;
  }

  Paragraph numbering(NumberingId id, IndentLevel level) {
    property = property.setNumbering(id:id, level:level);
    hasNumbering = true;
    return this;
  }

  Paragraph size(int size) {
    property.runProperty = property.runProperty.withSize(size);
    return this;
  }

  Paragraph bold() {
    property.runProperty = property.runProperty.makeBold();
    return this;
  }

  Paragraph italic() {
    property.runProperty = property.runProperty.makeItalic();
    return this;
  }

  Paragraph fonts(RunFonts f) {
    property.runProperty = property.runProperty.withFonts(f);
    return this;
  }

  Paragraph runProperty(RunProperty p) {
    property.runProperty = p;
    return this;
  }

  Paragraph lineSpacing(LineSpacing spacing) {
    property = property.setLineSpacing(spacing);
    return this;
  }

  // Paragraph delete(String author, String date) {
  //   property.runProperty.del = Delete().author(author).date(date);
  //   return this;
  // }
  //
  // Paragraph insert(String author, String date) {
  //   property.runProperty.ins = Insert.withEmpty().author(author).date(date);
  //   return this;
  // }

  Paragraph paragraphPropertyChange(ParagraphPropertyChange p) {
    property = property.setParagraphPropertyChange(p);
    return this;
  }

  @override
  String build() {
    return XMLBuilder().openParagraph(id).addChild(property).addChildren(children).close().build();
  }
}

class ParagraphChild implements BuildXML{
  Object? value;
  ParagraphChild(dynamic this.value);
  @override
  String build() {
    switch (value.runtimeType) {
    case Run:
      return (value as Run).build();
    // case Insert:
    //   return (value as Insert).build();
    // case Delete:
    //   return (value as Delete).build();
    // case Hyperlink:
    //   return (value as Hyperlink).build();
    // case BookmarkStart:
    //   return (value as BookmarkStart).build();
    // case BookmarkEnd:
    //   return (value as BookmarkEnd).build();
    // case CommentRangeStart:
    //   return (value as CommentRangeStart).build();
      case CommentRangeEnd:
        return (value as CommentRangeEnd).build();
    // case StructuredDataTag:
    //   return (value as StructuredDataTag).build();
      default:
        throw Exception("Unsupported type: $runtimeType");
    }
  }
}

// void main() {
//   final builder = Paragraph.defaultPara().addCommentEnd(1);
//   print(builder.build());
// }
