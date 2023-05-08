import 'package:docx_dart/documents/elements/comment.dart';

import '../../xml_builder/mod.dart';
import '../build_xml.dart';
import 'mod.dart';

class CommentRangeStart  implements BuildXML{
  int id;
  Comment comment;

  CommentRangeStart({required this.id, required this.comment});

  factory CommentRangeStart.fromComment(Comment comment) {
    return CommentRangeStart(
      id: comment.id,
      comment: comment,
    );
  }

  void setComment(Comment comment) {
    this.comment = comment;
  }

  Comment getComment() {
    return comment;
  }

  int getId() {
    return id;
  }
  @override
  String build() {
    return XMLBuilder().commentRangeStart(id.toString()).build();
  }
}