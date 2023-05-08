import 'package:xml/xml.dart';

import 'mod.dart';

extension CustomerProperties on XMLBuilder {
  // Build w:settings element
  // i.e. <w:settings ... >
  XMLBuilder openCustomProperties(String xmlns, String vt) {
    XmlBuilder builder = XmlBuilder();
    builder.element('Properties', nest: () {
      builder.attribute('xmlns', xmlns);
      builder.attribute('xmlns:vt', vt);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
  XMLBuilder openProperty(String fmtid, String pid, String name) {
    XmlBuilder builder = XmlBuilder();
    builder.element('property', nest: () {
      builder.attribute('fmtid', fmtid);
      builder.attribute('pid', pid);
      builder.attribute('name', name);
    });
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }

  XMLBuilder lpwstr() {
    XmlBuilder builder = XmlBuilder();
    builder.element('vt:lpwstr');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }
}