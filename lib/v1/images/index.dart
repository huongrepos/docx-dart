import 'dart:convert';
import 'dart:io';
import 'package:archive/archive.dart';
import 'package:xml/xml.dart';

Archive replaceIndexWithIndexInDocx(Archive archive, String newImagePath, int? replaceIndex) {
  replaceIndex ??= 0;
  // Load the new image file
  final newImageBytes = File(newImagePath).readAsBytesSync();
  List<String> imageIDs = getImageIDsInDocx(archive);
  // Find the ID of the existing image in the XML files
  if(replaceIndex < 0 || replaceIndex >= imageIDs.length){
    throw Exception("Please check replace index");
  }
  final existingImageID = imageIDs[replaceIndex];
  for (ArchiveFile file in archive) {
    if (file.isFile && file.name == 'word/media/image$existingImageID.png') {
      // update image data in archive
      final updatedFile = ArchiveFile(file.name, newImageBytes.length, newImageBytes);
      archive.files[archive.files.indexOf(file)] = updatedFile;
    }
  }
  return archive;
}

List<String> getImageIDsInDocx(Archive archive) {
  List<String> imageIDs = [];
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
      for (XmlNode drawingNode in document.findAllElements('w:drawing')) {
        for (XmlNode docPr in drawingNode.findAllElements('wp:docPr')) {
          String? id = docPr.getAttribute('id');
          if(id!=null){
            imageIDs.add(id);
          }
        }
      }
    }
  }
  return imageIDs;
}

void extractImagesFromDocx(Archive archive, String outFolderPath) {
  final imageFiles = archive.files.where(
          (file) => file.name.startsWith('word/media/')
  );
  for (final file in imageFiles) {
    final imageData = file.content as List<int>;
    final filename = file.name.split('/').last;
    // Write the image to disk
    File("$outFolderPath/$filename")..createSync(recursive: true)..writeAsBytesSync(imageData);
  }
}