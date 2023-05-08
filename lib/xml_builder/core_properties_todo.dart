import 'package:xml/xml.dart';

import 'mod.dart';

extension CoreProperties on XMLBuilder {

  // i.e. <cp:properties xmlns:vt="http://schemas.openxmlformats.org/package/2006/relationships">
  XMLBuilder openCoreProperties(String cp, String dc, String dcterms, String dcmitype, String xsi) {
    XmlBuilder builder = XmlBuilder();
    builder.element('cp:coreProperties', nest: () {
      builder.attribute('xmlns:cp', cp);
      builder.attribute('xmlns:dc', dc);
      builder.attribute('xmlns:dcterms', dcterms);
      builder.attribute('xmlns:dcmitype', dcmitype);
      builder.attribute('xmlns:xsi', xsi);
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