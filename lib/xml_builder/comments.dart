
import 'package:xml/xml.dart';

import 'mod.dart';
extension Comments on XMLBuilder {
  XMLBuilder openComments() {
    XmlBuilder builder = XmlBuilder();
    builder.element('w:comments', nest: () {
      builder.attribute('xmlns:o', 'urn:schemas-microsoft-com:office:office');
      builder.attribute('xmlns:r',
          'http://schemas.openxmlformats.org/officeDocument/2006/relationships');
      builder.attribute('xmlns:v', 'urn:schemas-microsoft-com:vml');
      builder.attribute('xmlns:w',
          'http://schemas.openxmlformats.org/wordprocessingml/2006/main');
      builder.attribute('xmlns:w10', 'urn:schemas-microsoft-com:office:word');
      builder.attribute('xmlns:wp',
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing');
      builder.attribute('xmlns:wps',
          'http://schemas.microsoft.com/office/word/2010/wordprocessingShape');
      builder.attribute('xmlns:wpg',
          'http://schemas.microsoft.com/office/word/2010/wordprocessingGroup');
      builder.attribute('xmlns:mc',
          'http://schemas.openxmlformats.org/markup-compatibility/2006');
      builder.attribute('xmlns:wp14',
          'http://schemas.microsoft.com/office/word/2010/wordprocessingDrawing');
      builder.attribute(
          'xmlns:w14', 'http://schemas.microsoft.com/office/word/2010/wordml');
      builder.attribute('mc:Ignorable', 'w14 wp14');
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
}