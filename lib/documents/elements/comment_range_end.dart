
import '../../xml_builder/mod.dart';
import '../build_xml.dart';
class CommentRangeEnd implements BuildXML{
  final int id;

  CommentRangeEnd(this.id);

  @override
  String build() {
    return XMLBuilder().openRun().openRunProperty().close().close().commentRangeEnd(id.toString()).openRun()
        .commentReference(id.toString()).close().build();
  }

}
// void main() {
//   final builder = CommentRangeEnd(1);
//   print(builder.build());
// }
