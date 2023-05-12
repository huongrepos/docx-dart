import '../../types/mod.dart';
import '../../utils/string_utils.dart';
import 'mod.dart';
import '../../xml_builder/mod.dart';
import '../build_xml.dart';
class ParagraphPropertyChange implements BuildXML{
  String author;
  String date;
  ParagraphProperty property;

  ParagraphPropertyChange({
    this.author = 'unnamed',
    this.date = '1970-01-01T00:00:00Z',
    required this.property,
  });

  factory ParagraphPropertyChange.newParagraphPropertyChange() {
    return ParagraphPropertyChange(
      property: ParagraphProperty.newParagraphProperty(),
    );
  }

  ParagraphPropertyChange setProperty(ParagraphProperty p) {
    property = p;
    return this;
  }

  ParagraphPropertyChange setAuthor(String author) {
    this.author = author;
    return this;
  }

  ParagraphPropertyChange setDate(String date) {
    this.date = date;
    return this;
  }
  @override
  String build() {
    return XMLBuilder().openParagraphPropertyChange(generateParaId(), author, date)
        .addChild(property)
        .close().build();
  }
}
// void main() {
//   final builder = ParagraphPropertyChange.newParagraphPropertyChange();
//   print(builder.build());
// }
