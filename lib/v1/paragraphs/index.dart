import 'dart:convert';
import 'package:archive/archive.dart';
import 'package:xml/xml.dart';

import '../../utils/xml_node.dart';

List<String> getParagraphsInDocx(Archive archive) {
  List<String> paragraphs = [];
  // Loop through all the files in the archive
  for (ArchiveFile file in archive) {
    // Check if the file is a Word document
    if (file.isFile && file.name == 'word/document.xml') {
    // if (file.name.endsWith('.xml')) {
      // Read the contents of the file
      String contents = utf8.decode(file.content);
      // Parse the contents as an XML document
      XmlDocument document = XmlDocument.parse(contents);

      // Loop through all the paragraph nodes in the document
      for (XmlNode paragraphNode in document.findAllElements('w:p')) {
        for (XmlNode runNode in paragraphNode.findAllElements('w:r')) {
          paragraphs.add(runNode.findAllElements('w:t').map((
              node) => node.innerText).join());
        }
      }
    }
  }
  return paragraphs;
}
Archive replaceTextOfParagraphInDocx(Archive archive, String searchText, String replaceText){
  // Loop through all the files in the archive
  for (ArchiveFile file in archive) {
    // Check if the file is a Word document
    if (file.isFile && file.name == 'word/document.xml') {
    // if (file.name.endsWith('.xml')) {
      // Read the contents of the file
      String contents = utf8.decode(file.content);

      // Parse the contents as an XML document
      XmlDocument document = XmlDocument.parse(contents);

      // Loop through all the paragraph nodes in the document
      for (XmlNode paragraphNode in document.findAllElements('w:p')) {
        for(XmlNode runNode in paragraphNode.findAllElements('w:r')){
          // Get the text content of the paragraph
          String paragraphText = runNode.findAllElements('w:t').map((node) => node.innerText).join();

          // If the paragraph contains the search text, replace it
          if (paragraphText.contains(searchText)) {
            // Replace the text content of the paragraph node
            XmlNode element;
            for (var i = 0; i < runNode.children.length; i++) {
              element = runNode.children[i];
              if(element.innerText.contains(searchText)){
                replaceText = element.innerText.replaceAll(searchText, replaceText);
                setTextContent(element, replaceText);
              }
            }
          }

          // Update the contents of the document
          contents = document.toXmlString(pretty: true);

          // Create a new archive file with the updated content
          final updatedFile = ArchiveFile(file.name, contents.length, utf8.encode(contents));

          // Replace the original file in the archive with the updated file
          archive.files[archive.files.indexOf(file)] = updatedFile;
          file = updatedFile;
        }
      }
    }
  }
  return archive;
}
