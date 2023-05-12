import 'package:docx_dart/xml_builder/declaration.dart';
import 'package:docx_dart/xml_builder/relationship.dart';
import 'package:tuple/tuple.dart';

import '../../xml_builder/mod.dart';
import 'build_xml.dart';
class Rels implements BuildXML{
  late List<Tuple3<String, String, String>> rels;

  Rels() {
    rels = [];
  }

  Rels setDefault() {
    rels.add(Tuple3(
        'http://schemas.openxmlformats.org/package/2006/relationships/metadata/core-properties',
        'rId1',
        'docProps/core.xml'));
    rels.add(Tuple3(
        'http://schemas.openxmlformats.org/officeDocument/2006/relationships/extended-properties',
        'rId2',
        'docProps/app.xml'));
    rels.add(Tuple3(
        'http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument',
        'rId3',
        'word/document.xml'));
    rels.add(Tuple3(
        'http://schemas.openxmlformats.org/officeDocument/2006/relationships/custom-properties',
        'rId4',
        'docProps/custom.xml'));
    return this;
  }

  Rels addTaskpanesRel() {
    return addRel('http://schemas.microsoft.com/office/2011/relationships/webextensiontaskpanes',
        'word/webextensions/taskpanes.xml');
  }

  Rels addRel(String relType, String target) {
    rels.add(Tuple3(relType, 'rId${rels.length + 1}', target));
    return this;
  }

  Tuple3<String, String, String>? findTarget(String relType) {
    return rels.firstWhere((rel) => rel.item1 == relType);
  }
  @override
  String build() {
    XMLBuilder xmlBuilder = XMLBuilder().declaration().openTypes("http://schemas.openxmlformats.org/package/2006/content-types")
        .openRelationships("http://schemas.openxmlformats.org/package/2006/relationships");
    for(final element in rels){
      xmlBuilder.relationship(element.item2, element.item1, element.item3);
    }
    return xmlBuilder.close().build();
  }
}
void main(){
    final builder = Rels().setDefault();
    print(builder.build());
}