import 'package:xml/xml.dart';

class XMLBuilder {
  final XmlBuilder builder;

  XMLBuilder(this.builder);

  XMLBuilder openHeader() {
    builder.element('w:ftr', nest: () {
      builder.attribute('xmlns:r', 'http://schemas.openxmlformats.org/officeDocument/2006/relationships');
      builder.attribute('xmlns:o', 'urn:schemas-microsoft-com:office:office');
      builder.attribute('xmlns:v', 'urn:schemas-microsoft-com:vml');
      builder.attribute('xmlns:w', 'http://schemas.openxmlformats.org/wordprocessingml/2006/main');
      builder.attribute('xmlns:w10', 'urn:schemas-microsoft-com:office:word');
      builder.attribute('xmlns:wp', 'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing');
      builder.attribute('xmlns:wps', 'http://schemas.microsoft.com/office/word/2010/wordprocessingShape');
      builder.attribute('xmlns:wpg', 'http://schemas.microsoft.com/office/word/2010/wordprocessingGroup');
      builder.attribute('xmlns:mc', 'http://schemas.openxmlformats.org/markup-compatibility/2006');
      builder.attribute('xmlns:wp14', 'http://schemas.microsoft.com/office/word/2010/wordprocessingDrawing');
      builder.attribute('xmlns:w14', 'http://schemas.microsoft.com/office/word/2010/wordml');
      builder.attribute('mc:Ignorable', 'w14 wp14');
    });
    return this;
  }
}
