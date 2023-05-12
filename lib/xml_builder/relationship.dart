import 'package:xml/xml.dart';
import 'package:xml/xml_events.dart';

import '../types/mod.dart';
import 'mod.dart';
extension Relationship on XMLBuilder {
  // Build Relationships element
  // i.e. <Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships">
  XMLBuilder openRelationships(String xmlns) {
    List<XmlEventAttribute> listAttr = <XmlEventAttribute>[
      XmlEventAttribute("xmlns", xmlns, XmlAttributeType.DOUBLE_QUOTE),
    ];
    stack.add('Relationships');
    writer.add(XmlStartElementEvent("Relationships", listAttr, false).toString());
    return this;
  }

  // Build Relationship
  XMLBuilder relationship(String id, String type, String target) {
    XmlBuilder builder = XmlBuilder();
    builder.element('Relationship', nest: () {
      builder.attribute('Id', id);
      builder.attribute('Type', type);
      builder.attribute('Target', target);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }

  // Build Relationship with TargetMode
  XMLBuilder relationshipWithMode(String id, String type, String target, String targetMode) {
    XmlBuilder builder = XmlBuilder();
    builder.element('Relationship', nest: () {
      builder.attribute('Id', id);
      builder.attribute('Type', type);
      builder.attribute('Target', target);
      builder.attribute('TargetMode', targetMode);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
}