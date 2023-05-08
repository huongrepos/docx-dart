import 'package:xml/xml.dart';

class XMLBuilder {
  final XmlBuilder builder;

  XMLBuilder(this.builder);

  // Build w:settings element
  // i.e. <w:settings ... >
  XMLBuilder openSettings() {
    builder.element('w:settings', nest: () {
      builder.attribute('xmlns:w', 'http://schemas.openxmlformats.org/wordprocessingml/2006/main');
      builder.attribute('xmlns:w14', 'http://schemas.microsoft.com/office/word/2010/wordml');
      builder.attribute('xmlns:w15', 'http://schemas.microsoft.com/office/word/2012/wordml');
    });
    return this;
  }

  // Write XML to a string buffer
  String writeToBuffer() {
    final buffer = StringBuffer();
    buffer.write(builder.buildDocument().toXmlString(pretty: true));
    return buffer.toString();
  }
}