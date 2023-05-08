import 'mod.dart';

class Delete {
  String author;
  String date;
  List<DeleteChild> children;

  Delete({required this.author, required this.date, required this.children});
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

class Run {}

class CommentRangeStart {}
