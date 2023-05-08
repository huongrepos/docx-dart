
import '../../utils/string_utils.dart';
import '../../xml_builder/mod.dart';
import 'mod.dart';

class Paragraph {
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
    property: ParagraphProperty(),
    hasNumbering: false,
  );
}

enum ParagraphChildType {
  run,
  insert,
  delete,
  bookmarkStart,
  hyperlink,
  bookmarkEnd,
  commentStart,
  commentEnd,
  structuredDataTag,
}

abstract class ParagraphChild implements XMLBuilder{
  ParagraphChildType get type;
  @override
  String build() {
    switch (runtimeType) {
      case Run:
        return (this as Run).build();
      case Insert:
        return (this as Insert).build();
      case Delete:
        return (this as Delete).build();
      case Hyperlink:
        return (this as Hyperlink).build();
      case BookmarkStart:
        return (this as BookmarkStart).build();
      case BookmarkEnd:
        return (this as BookmarkEnd).build();
      case CommentRangeStart:
        return (this as CommentRangeStart).build();
      case CommentRangeEnd:
        return (this as CommentRangeEnd).build();
      case StructuredDataTag:
        return (this as StructuredDataTag).build();
      default:
        throw Exception("Unsupported type: ${this.runtimeType}");
    }
  }
}
