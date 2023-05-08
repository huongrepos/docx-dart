import 'mod.dart';

extension CoreProperties on XMLBuilder {

  // i.e. <cp:properties xmlns:vt="http://schemas.openxmlformats.org/package/2006/relationships">
  XMLBuilder openCoreProperties(String cp, String dc, String dcterms, String dcmitype, String xsi) {
    builder.element('cp:coreProperties', nest: () {
      builder.attribute('xmlns:cp', cp);
      builder.attribute('xmlns:dc', dc);
      builder.attribute('xmlns:dcterms', dcterms);
      builder.attribute('xmlns:dcmitype', dcmitype);
      builder.attribute('xmlns:xsi', xsi);
    });
    return this;
  }
  XMLBuilder openProperty(String fmtid, String pid, String name) {
    builder.element('property', nest: () {
      builder.attribute('fmtid', fmtid);
      builder.attribute('pid', pid);
      builder.attribute('name', name);
    });
    return this;
  }

  XMLBuilder lpwstr() {
    builder.element('vt:lpwstr');
    return this;
  }
}