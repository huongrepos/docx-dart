import 'dart:io';
import 'package:archive/archive.dart';

Archive filePathToArchive(String filePath){
  // Read the DOCX file as a byte array
  List<int> bytes = File(filePath).readAsBytesSync();
  // Create an Archive object from the byte array
  return ZipDecoder().decodeBytes(bytes, verify: true);
}
void archiveToFile(Archive archive, String path){
  // Write the updated archive to a new file
  List<int> encodedArchive = ZipEncoder().encode(archive, level: Deflate.BEST_COMPRESSION)!;
  File(path).writeAsBytesSync(encodedArchive);
}
