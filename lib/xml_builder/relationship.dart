import 'package:xml/xml.dart';

class XMLBuilder {
  final XmlBuilder builder;

  XMLBuilder(this.builder);

  // Build Relationships element
  // i.e. <Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships">
  XMLBuilder openRelationships(String xmlns) {
    builder.element('Relationships', nest: () {
      builder.attribute('xmlns', xmlns);
    });
    return this;
  }

  // Build Relationship
  XMLBuilder relationship(String id, String type, String target) {
    builder.element('Relationship', nest: () {
      builder.attribute('Id', id);
      builder.attribute('Type', type);
      builder.attribute('Target', target);
    });
    return this;
  }

  // Build Relationship with TargetMode
  XMLBuilder relationshipWithMode(String id, String type, String target, String targetMode) {
    builder.element('Relationship', nest: () {
      builder.attribute('Id', id);
      builder.attribute('Type', type);
      builder.attribute('Target', target);
      builder.attribute('TargetMode', targetMode);
    });
    return this;
  }
}