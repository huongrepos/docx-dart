import 'package:docx_dart/documents/footer_id.dart';
import 'package:docx_dart/xml_builder/declaration.dart';
import 'package:docx_dart/xml_builder/relationship.dart';
import 'package:tuple/tuple.dart';

import '../../xml_builder/mod.dart';
import '../escape/mod.dart';
import 'build_xml.dart';
import 'header_id.dart';
class DocumentRels implements BuildXML{
  late bool hasComments;
  late bool hasNumberings;
  late List<Tuple2<String, String>> images;
  late List<Tuple3<String, String, String>> hyperlinks;
  late int customXmlCount;
  late int headerCount;
  late int footerCount;

  DocumentRels() {
    hasComments = false;
    hasNumberings = false;
    images = [];
    hyperlinks = [];
    customXmlCount = 0;
    headerCount = 0;
    footerCount = 0;
  }

  DocumentRels addCustomItem() {
    customXmlCount++;
    return this;
  }

  DocumentRels addImage(String id, String path) {
    images.add(Tuple2(id, path));
    return this;
  }

  DocumentRels addHyperlinks(String id, String path, String type) {
    hyperlinks.add(Tuple3(id, escape(path), type));
    return this;
  }
  @override
  String build() {
    XMLBuilder xmlBuilder = XMLBuilder().declaration().openTypes("http://schemas.openxmlformats.org/package/2006/content-types")
        .openRelationships("http://schemas.openxmlformats.org/package/2006/relationships")
        .relationship("rId1","http://schemas.openxmlformats.org/officeDocument/2006/relationships/styles","styles.xml")
        .relationship("rId2","http://schemas.openxmlformats.org/officeDocument/2006/relationships/fontTable","fontTable.xml")
        .relationship("rId3","http://schemas.openxmlformats.org/officeDocument/2006/relationships/settings","settings.xml")
        .relationship("rId5","http://schemas.microsoft.com/office/2011/relationships/commentsExtended","commentsExtended.xml");
    if(hasComments){
      xmlBuilder.relationship("rId7", "http://schemas.openxmlformats.org/officeDocument/2006/relationships/numbering", "numbering.xml");
    }
    for (var i = 0; i < headerCount; i++) {
      xmlBuilder.relationship(
          createHeaderRid(i + 1),
          'http://schemas.openxmlformats.org/officeDocument/2006/relationships/header',
          'header${i + 1}.xml');
    }
    for (var i = 0; i < footerCount; i++) {
      xmlBuilder.relationship(
          createFooterRid(i + 1),
          "http://schemas.openxmlformats.org/officeDocument/2006/relationships/footer",
          'footer${i + 1}.xml');
    }
    for (var i = 0; i < customXmlCount; i++) {
      xmlBuilder.relationship(
          'rId${i + 8}',
          'http://schemas.openxmlformats.org/officeDocument/2006/relationships/customXml',
          '../customXml/item${i + 1}.xml');
    }

    for (var tuple in images) {
      xmlBuilder.relationship(
          tuple.item1,
          'http://schemas.openxmlformats.org/officeDocument/2006/relationships/image',
          tuple.item2);
    }

    for (var tuple in hyperlinks) {
      xmlBuilder.relationshipWithMode(
          tuple.item1,
          'http://schemas.openxmlformats.org/officeDocument/2006/relationships/hyperlink',
          tuple.item2,
          tuple.item3);
    }
    return xmlBuilder.close().build();
  }
}