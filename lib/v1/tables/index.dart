import 'dart:convert';
import 'package:archive/archive.dart';
import 'package:xml/xml.dart';

import '../../utils/string_utils.dart';

Archive addTableAfterParagraphOrderInDocx(Archive archive,final data, int paragraphOrder) {

  // Generate the XML string for the table
  final tableXml = _generateTableXml(data);

  // Loop through all the files in the archive
  for (ArchiveFile file in archive) {
    // Check if the file is a Word document
    if (file.isFile && file.name == 'word/document.xml') {
      // if (file.name.endsWith('.xml')) {
      // Read the contents of the file
      String contents = utf8.decode(file.content);
      final index = findIndexSubStringWithOrder(contents, "</w:p>", paragraphOrder);
      contents = addSubStringFromIndex(contents, tableXml, index);
      // contents = document.toXmlString(pretty: true);
      // Create a new archive file with the updated content
      final updatedFile = ArchiveFile(file.name, contents.length, utf8.encode(contents));
      // Replace the original file in the archive with the updated file
      archive.files[archive.files.indexOf(file)] = updatedFile;

    }
  }
  return archive;
}

Archive addTableAfterParagraphOrderInDocx2(Archive archive,final data, int paragraphOrder) {

  // Generate the XML string for the table
  final tableXmlString = _generateTableXml(data);

  // Loop through all the files in the archive
  for (ArchiveFile file in archive) {
    // Check if the file is a Word document
    if (file.isFile && file.name == 'word/document.xml') {
      // if (file.name.endsWith('.xml')) {
      // Read the contents of the file
      String contents = utf8.decode(file.content);
      // Parse the contents as an XML document
      XmlDocument document = XmlDocument.parse(contents);
      XmlNode tableXml = XmlDocument.parse(tableXmlString);
      final rootNode = document.rootElement;
      var matchCount = 0;
      for (XmlNode paragraphNode in rootNode.children) {
        matchCount ++;
        if(matchCount == paragraphOrder){
          break;
        }
      }
      rootNode.children.add(tableXml);
      contents = document.toXmlString(pretty: true);
      // Create a new archive file with the updated content
      final updatedFile = ArchiveFile(file.name, contents.length, utf8.encode(contents));
      // Replace the original file in the archive with the updated file
      archive.files[archive.files.indexOf(file)] = updatedFile;

    }
  }
  return archive;
}


String _generateTableXml(List<List<String>> data) {
  late List<String> first = data.first;
  late StringBuffer gridCol = StringBuffer();
  for(final item in first){
    gridCol.write('<w:gridCol w:w="100" />');
  }
  final buffer = StringBuffer();
  buffer.writeln('<w:tbl xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main">');
  buffer.writeln('<w:tblPr><w:tblStyle w:val="TableGrid" /><w:tblW w:w="5000" w:type="pct"/></w:tblPr>');
  buffer.writeln('<w:tblGrid>$gridCol</w:tblGrid>');
  for (final row in data) {
    buffer.writeln('<w:tr>');
    for (final cell in row) {
      buffer.writeln('<w:tc><w:tcPr> <w:tcW w:w="100" w:type="dxa"/></w:tcPr><w:p><w:r><w:t>$cell</w:t></w:r></w:p></w:tc>');
    }
    buffer.writeln('</w:tr>');
  }
  buffer.writeln('</w:tbl>');
  return buffer.toString();
}