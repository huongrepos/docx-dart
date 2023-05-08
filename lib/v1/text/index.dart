import 'dart:convert';
import 'package:archive/archive.dart';
import 'package:docx_dart/utils/archive.dart';

void replaceTextInDocx(String inputFilePath, String searchText, String replaceText, String outputFilePath) {
  Archive archive = filePathToArchive(inputFilePath);
  // Loop through all the files in the archive
  for (final file in archive) {
    // Check if the file is a Word document
    if (file.isFile && file.name.endsWith('.xml')) {
      // Read the contents of the file
      String contents = utf8.decode(file.content);

      // Replace all occurrences of the search text
      String updatedContents = contents.replaceAll(searchText, replaceText);

      // Create a new archive file with the updated content
      ArchiveFile updatedFile = ArchiveFile(file.name, updatedContents.length, utf8.encode(updatedContents));
      archive.files[archive.files.indexOf(file)] = updatedFile;

    }
  }
  archiveToFile(archive, outputFilePath);
}
