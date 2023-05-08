import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:archive/archive.dart';
import 'package:xml/xml.dart';

import '../../utils/archive.dart';

void main() {
  final archive = filePathToArchive('template.docx');
  final file = archive.files.firstWhere((file) => file.name == 'word/document.xml');
  String contents = utf8.decode(file.content);

  // Parse the contents as an XML document
  XmlDocument document = XmlDocument.parse(contents);

  final listNode = document.findAllElements('w:pStyle').firstWhere((node) => node.getAttribute('w:val') == 'ListParagraph');
  final listId = listNode.parent?.getElement('w:numId')?.getAttribute('w:val');
  final numIdNode = document.findAllElements('w:numId').firstWhere((node) => node.getAttribute('w:numId') == listId);

  final listParent = numIdNode.parent;
  final lastListItem = listParent?.findAllElements('w:p').last;
  final newItem = XmlElement(
    XmlName('w:p'),
    [],
    [
      XmlElement(
        XmlName('w:pPr'),
        [],
        [
          XmlElement(
            XmlName('w:numPr'),
            [],
            [
              XmlElement(XmlName('w:ilvl'), [XmlAttribute(XmlName('w:val'), '0')], []),
              numIdNode.getElement('w:numId')?.copy() ?? XmlElement(XmlName('w:numId'), [XmlAttribute(XmlName('w:val'), listId!)], []),
            ],
          ),
        ],
      ),
      XmlElement(XmlName('w:r'), [], [XmlText('New item')]),
    ],
  );
  lastListItem?.replace(XmlElement(
    lastListItem.name,
    lastListItem.attributes,
    List<XmlNode>.from(lastListItem.children)..add(newItem),
  ));
  // Update the contents of the document
  contents = document.toXmlString(pretty: true);

  // Create a new archive file with the updated content
  final updatedFile = ArchiveFile(file.name, contents.length, utf8.encode(contents));
  // Replace the original file in the archive with the updated file
  archive.files[archive.files.indexOf(file)] = updatedFile;
  archiveToFile(archive, "ok.docx");
}