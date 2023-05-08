import 'dart:io';
import 'package:archive/archive.dart';

import '../documents/xml_docx.dart';

Future<void> zip(File file, XMLDocx xml) async {
  var encoder = ZipEncoder();
  var archive = Archive();

  archive.addFile(ArchiveFile('[Content_Types].xml', xml.contentType.length, xml.contentType));
  archive.addFile(ArchiveFile('_rels/.rels', xml.rels.length, xml.rels));
  archive.addFile(ArchiveFile('docProps/app.xml', xml.docProps.app.length, xml.docProps.app));
  archive.addFile(ArchiveFile('docProps/core.xml', xml.docProps.core.length, xml.docProps.core));
  archive.addFile(ArchiveFile('docProps/custom.xml', xml.docProps.custom.length, xml.docProps.custom));
  archive.addFile(ArchiveFile('word/_rels/document.xml.rels', xml.documentRels.length, xml.documentRels));
  archive.addFile(ArchiveFile('word/document.xml', xml.document.length, xml.document));
  archive.addFile(ArchiveFile('word/styles.xml', xml.styles.length, xml.styles));
  archive.addFile(ArchiveFile('word/settings.xml', xml.settings.length, xml.settings));
  archive.addFile(ArchiveFile('word/fontTable.xml', xml.fontTable.length, xml.fontTable));
  archive.addFile(ArchiveFile('word/comments.xml', xml.comments.length, xml.comments));
  archive.addFile(ArchiveFile('word/numbering.xml', xml.numberings.length, xml.numberings));
  archive.addFile(ArchiveFile('word/commentsExtended.xml', xml.commentsExtended.length, xml.commentsExtended));

  for (var i = 0; i < xml.headers.length; i++) {
    archive.addFile(ArchiveFile('word/header${i + 1}.xml', xml.headers[i].length, xml.headers[i]));
  }

  for (var i = 0; i < xml.footers.length; i++) {
    archive.addFile(ArchiveFile('word/footer${i + 1}.xml', xml.footers[i].length, xml.footers[i]));
  }

  if (xml.media.isNotEmpty) {
    for (var m in xml.media.entries) {
      // For now only png supported
      archive.addFile(ArchiveFile('word/media/${m.key}.png', m.value.length, m.value));
    }
  }

  // For now support only task panes
  if (xml.taskpanes != null) {
    archive.addFile(ArchiveFile('word/webextensions/taskpanes.xml', xml.taskpanes!.length, xml.taskpanes));
    archive.addFile(ArchiveFile('word/webextensions/_rels/taskpanes.xml.rels', xml.taskpanesRels.length, xml.taskpanesRels));
    for (var i = 0; i < xml.webExtensions.length; i++) {
      archive.addFile(ArchiveFile('word/webextensions/webextension${i + 1}.xml', xml.webExtensions[i].length, xml.webExtensions[i]));
    }
  }

  if (xml.customItems.isNotEmpty) {
    archive.addFile(ArchiveFile('customXml/_rels', 0, []));
  }

  for (var i = 0; i < xml.customItems.length; i++) {
    var n = i + 1;
    archive.addFile(ArchiveFile('customXml/_rels/item$n.xml.rels', xml.customItemRels[i].length, xml.customItemRels[i]));
    archive.addFile(ArchiveFile('customXml/item$n.xml', xml.customItems[i].length, xml.customItems[i]));
    archive.addFile(ArchiveFile('customXml/itemProps$n.xml', xml.customItemProps[i].length, xml.customItemProps[i]));
  }
  file.writeAsBytesSync(encoder.encode(archive)!);
}