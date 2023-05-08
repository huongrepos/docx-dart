import 'package:archive/archive.dart';
import 'package:docx_dart/v1/paragraphs/index.dart';

import 'v1/images/index.dart';
class ViewManager {
  final Archive arch;

  ViewManager(this.arch);

  List<String> getParagraphs() {
    return getParagraphsInDocx(arch);
  }
  void extractImages(String outFolderPath){
    extractImagesFromDocx(arch, outFolderPath);
  }
}