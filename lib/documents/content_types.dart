
import 'package:docx_dart/xml_builder/declaration.dart';

import '../../xml_builder/mod.dart';
import 'build_xml.dart';
class ContentTypes implements BuildXML{
  late final Map<String, String> types;
  int webExtensionCount = 1;
  int customXmlCount = 1;
  int headerCount = 0;
  int footerCount = 0;

  ContentTypes() {
    types = {};
    webExtensionCount = 1;
    customXmlCount = 1;
    headerCount = 0;
    footerCount = 0;
  }

  ContentTypes setDefault() {
    types['/_rels/.rels'] = 'application/vnd.openxmlformats-package.relationships+xml';
    types['/docProps/app.xml'] = 'application/vnd.openxmlformats-officedocument.extended-properties+xml';
    types['/docProps/core.xml'] = 'application/vnd.openxmlformats-package.core-properties+xml';
    types['/word/_rels/document.xml.rels'] = 'application/vnd.openxmlformats-package.relationships+xml';
    types['/word/settings.xml'] = 'application/vnd.openxmlformats-officedocument.wordprocessingml.settings+xml';
    types['/word/fontTable.xml'] = 'application/vnd.openxmlformats-officedocument.wordprocessingml.fontTable+xml';
    types['/word/document.xml'] = 'application/vnd.openxmlformats-officedocument.wordprocessingml.document.main+xml';
    types['/word/styles.xml'] = 'application/vnd.openxmlformats-officedocument.wordprocessingml.styles+xml';
    types['/word/comments.xml'] = 'application/vnd.openxmlformats-officedocument.wordprocessingml.comments+xml';
    types['/word/numbering.xml'] = 'application/vnd.openxmlformats-officedocument.wordprocessingml.numbering+xml';
    types['/word/commentsExtended.xml'] = 'application/vnd.openxmlformats-officedocument.wordprocessingml.commentsExtended+xml';
    types['/docProps/custom.xml'] = 'application/vnd.openxmlformats-officedocument.custom-properties+xml';
    return this;
  }

  ContentTypes addContent(String path, String namespace) {
    types[path] = namespace;
    return this;
  }

  ContentTypes addTaskpanes() {
    types['/word/webextensions/taskpanes.xml'] = 'application/vnd.ms-office.webextensiontaskpanes+xml';
    return this;
  }

  ContentTypes addWebExtensions() {
    types['/word/webextensions/webextension$webExtensionCount.xml'] = 'application/vnd.ms-office.webextension+xml';
    webExtensionCount++;
    return this;
  }

  ContentTypes addCustomXml() {
    types['/customXml/itemProps$customXmlCount.xml'] = 'application/vnd.openxmlformats-officedocument.customXmlProperties+xml';
    customXmlCount++;
    return this;
  }

  ContentTypes addHeader() {
    headerCount++;
    types['/word/header$headerCount.xml'] = 'application/vnd.openxmlformats-officedocument.wordprocessingml.header+xml';
    return this;
  }

  ContentTypes addFooter() {
    footerCount++;
    types['/word/footer$footerCount.xml'] = 'application/vnd.openxmlformats-officedocument.wordprocessingml.footer+xml';
    return this;
  }
  @override
  String build() {
    XMLBuilder xmlBuilder = XMLBuilder().declaration().openTypes("http://schemas.openxmlformats.org/package/2006/content-types")
        .addDefault("png", "image/jpeg")
        .addDefault("jpeg", "image/jpeg")
        .addDefault("jpg", "image/jpg")
        .addDefault("bmp", "image/bmp")
        .addDefault("gif", "image/gif")
        .addDefault("rels", "application/vnd.openxmlformats-package.relationships+xml")
        .addDefault("xml", "application/xml");
    for(final element in types.entries){
      xmlBuilder.addOverride(element.key, element.value);
    }
    return xmlBuilder.close().build();
  }
}
// void main(){
//     final builder = ContentTypes();
//     print(builder.build());
// }