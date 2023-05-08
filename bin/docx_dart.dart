import 'package:docx_dart/docx_manager.dart';
import 'package:docx_dart/view_manager.dart';

void main(){
  final data = [
    ['Name', 'Age', 'City', 'Gender', 'IsStudent'],
    ['John', '30', 'New York', 'F', 'Y'],
    ['Jane', '25', 'San Francisco', 'F', 'N'],
    ['Bob', '40', 'Los Angeles', 'M', '-'],
  ];
  DocxManager docxManager = DocxManager();
  docxManager.init("template.docx");
  ViewManager viewManager = docxManager.getInfo();
  List<String> e = viewManager.getParagraphs();
  print(e);
  viewManager.extractImages("extract_folder/images");
  // doan van
  // hinh anh
  // table

  docxManager.replaceTextOfParagraph("Xin", "XYZZZZZZZ").replaceTextOfParagraph("Huong", "BB").replaceIndexWithIndex("te.png", 0).addTableAfterParagraphOrder(data, 19);
  docxManager.save("output.docx");

}
