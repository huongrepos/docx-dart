import 'package:xml/xml.dart';

class XMLBuilder {
  final XmlWriter writer;

  XMLBuilder(this.writer);

  XMLBuilder openNumbering() {
    writer.writeAttributes(XmlElement(XmlName('w:numbering'), [
      XmlAttribute(XmlName('xmlns:r'), 'http://schemas.openxmlformats.org/officeDocument/2006/relationships'),
      XmlAttribute(XmlName('xmlns:o'), 'urn:schemas-microsoft-com:office:office'),
      XmlAttribute(XmlName('xmlns:v'), 'urn:schemas-microsoft-com:vml'),
      XmlAttribute(XmlName('xmlns:w'), 'http://schemas.openxmlformats.org/wordprocessingml/2006/main'),
    ]));
    return this;
  }
}

void main() {
  final builder = XMLBuilder(XmlWriter(StringBuffer()));
  builder.openNumbering();
  print(builder);
}