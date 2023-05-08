import 'package:archive/archive.dart';
import 'package:docx_dart/view_manager.dart';
import 'v1/images/index.dart';
import 'v1/tables/index.dart';
import 'utils/archive.dart';
import 'package:docx_dart/v1/paragraphs/index.dart';
class DocxManager {
  late  Archive arch;
  void init(String path){
    arch= filePathToArchive(path);
  }
  ViewManager getInfo(){
    return ViewManager(arch);
  }
  DocxManager replaceTextOfParagraph(String searchText, String replaceText){
    arch = replaceTextOfParagraphInDocx(arch, searchText, replaceText);
    return this;
  }
  DocxManager replaceIndexWithIndex(String newImagePath, [int? replaceIndex]){
    arch = replaceIndexWithIndexInDocx(arch, newImagePath, replaceIndex);
    return this;
  }
  DocxManager addTableAfterParagraphOrder(final data, int paragraphOrder){
    arch = addTableAfterParagraphOrderInDocx(arch, data, paragraphOrder);
    return this;
  }
  void save(String path){
    archiveToFile(arch, path);
  }
}
