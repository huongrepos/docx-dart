import 'package:xml/xml.dart';

class XMLBuilder {
  final XmlWriter writer;

  XMLBuilder(this.writer);

  XMLBuilder openDocument() {
    writer.writeAttributes(XmlElement(XmlName('w:document'), [
        XmlAttribute(XmlName('xmlns:o'), 'urn:schemas-microsoft-com:office:office'),
        XmlAttribute(XmlName('xmlns:r'), 'http://schemas.openxmlformats.org/officeDocument/2006/relationships'),
        XmlAttribute(XmlName('xmlns:v'), 'urn:schemas-microsoft-com:vml'),
        XmlAttribute(XmlName('xmlns:w'), 'http://schemas.openxmlformats.org/wordprocessingml/2006/main'),
        XmlAttribute(XmlName('xmlns:w10'), 'urn:schemas-microsoft-com:office:word'),
        XmlAttribute(XmlName('xmlns:wp'), 'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing'),
        XmlAttribute(XmlName('xmlns:wps'), 'http://schemas.microsoft.com/office/word/2010/wordprocessingShape'),
        XmlAttribute(XmlName('xmlns:wpg'), 'http://schemas.microsoft.com/office/word/2010/wordprocessingGroup'),
        XmlAttribute(XmlName('xmlns:mc'), 'http://schemas.openxmlformats.org/markup-compatibility/2006'),
        XmlAttribute(XmlName('xmlns:wp14'), 'http://schemas.microsoft.com/office/word/2010/wordprocessingDrawing'),
        XmlAttribute(XmlName('xmlns:w14'), 'http://schemas.microsoft.com/office/word/2010/wordml'),
        XmlAttribute(XmlName('xmlns:w15'), 'http://schemas.microsoft.com/office/word/2012/wordml'),
        XmlAttribute(XmlName('mc:Ignorable'), 'w14 wp14'),
    ]));
    return this;
  }
}