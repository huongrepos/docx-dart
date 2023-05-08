import 'package:xml/xml.dart';

class XMLBuilder {
  final XmlBuilder builder;

  XMLBuilder(this.builder);

  XMLBuilder openHeader() {
    builder.element('w:fonts', nest: () {
      builder.attribute('xmlns:w', 'http://schemas.openxmlformats.org/wordprocessingml/2006/main');
      builder.attribute('xmlns:r', 'http://schemas.openxmlformats.org/officeDocument/2006/relationships');
    });
    return this;
  }
}