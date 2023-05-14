import 'package:xml/xml_events.dart';
import 'mod.dart';

extension Comments on XMLBuilder {
  // Build w:style element
  // i.e. <w:styles ... >
  XMLBuilder openStyles() {
    List<XmlEventAttribute> listAttr = <XmlEventAttribute>[
      XmlEventAttribute('xmlns:mc', 'http://schemas.openxmlformats.org/markup-compatibility/2006', XmlAttributeType.SINGLE_QUOTE),
      XmlEventAttribute('xmlns:r', 'http://schemas.openxmlformats.org/officeDocument/2006/relationships', XmlAttributeType.SINGLE_QUOTE),
      XmlEventAttribute('xmlns:w', 'http://schemas.openxmlformats.org/wordprocessingml/2006/main', XmlAttributeType.SINGLE_QUOTE),
      XmlEventAttribute('xmlns:w14', 'http://schemas.microsoft.com/office/word/2010/wordml', XmlAttributeType.SINGLE_QUOTE),
      XmlEventAttribute('xmlns:w15', 'http://schemas.microsoft.com/office/word/2012/wordml', XmlAttributeType.SINGLE_QUOTE),
      XmlEventAttribute('mc:Ignorable', 'w14 w15', XmlAttributeType.SINGLE_QUOTE)
    ];
    stack.add('w:styles');
    writer.add(XmlStartElementEvent("w:styles", listAttr, false).toString());
    return this;
  }
}