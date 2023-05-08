import '../../xml_builder/mod.dart';
import 'mod.dart';
import '../build_xml.dart';

class Comment implements BuildXML{
  int id;
  String author;
  String date;
  List<CommentChild> children;
  int? parentCommentId;

  Comment({
    this.id = 1,
    this.author = 'unnamed',
    this.date = '1970-01-01T00:00:00Z',
    this.children = const [],
    this.parentCommentId,
  });

  factory Comment.newComment(int id) {
    return Comment(
      id: id,
    );
  }

  Comment setAuthor(String author) {
    this.author = author;
    return this;
  }

  Comment setDate(String date) {
    this.date = date;
    return this;
  }

  Comment addParagraph(Paragraph p) {
    children.add(CommentChild(p, null));
    return this;
  }

  Comment addTable(Table t) {
    children.add(CommentChild(null, t));
    return this;
  }

  Comment setParentCommentId(int parentCommentId) {
    this.parentCommentId = parentCommentId;
    return this;
  }

  int getId() {
    return id;
  }

  @override
  String build() {
    final builder = XMLBuilder();
    return builder.openComments().build();
  }
}


class CommentChild implements BuildXML{
  Paragraph? paragraph;
  Table? table;

  CommentChild([this.paragraph, this.table]);

  @override
  String build() {
    final builder = XMLBuilder();
    return builder.openComments().build();
  }
}