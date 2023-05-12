import 'mod.dart';

class Delete {
  String author;
  String date;
  List<DeleteChild> children;

  Delete({this.author = 'unnamed', this.date = '1970-01-01T00:00:00Z', this.children = const []});
}

enum DeleteChildType { run, commentStart, commentEnd }

class DeleteChild {
  DeleteChildType type;
  Run? run;
  CommentRangeStart? commentStart;
  CommentRangeEnd? commentEnd;

  DeleteChild.run(this.run) : type = DeleteChildType.run;

  DeleteChild.commentStart(this.commentStart)
      : type = DeleteChildType.commentStart;

  DeleteChild.commentEnd(this.commentEnd)
      : type = DeleteChildType.commentEnd;
}

class CommentRangeStart {}
