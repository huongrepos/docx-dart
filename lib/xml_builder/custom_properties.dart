import 'mod.dart';

extension CustomerProperties on XMLBuilder {
  // Build w:settings element
  // i.e. <w:settings ... >
  XMLBuilder openCustomProperties(String xmlns, String vt) {
    builder.element('Properties', nest: () {
      builder.attribute('xmlns', xmlns);
      builder.attribute('xmlns:vt', vt);
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