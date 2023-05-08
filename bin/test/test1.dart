import 'package:xml/xml.dart';

import 'base.dart';
extension Test1 on XMLBuilder {
  XMLBuilder openStyles1() {
    builder.element('w:styles', nest: () {
      builder.attribute('xmlns:mc', 'http://schemas.openxmlformats.org/markup-compatibility/2006');
      builder.attribute('xmlns:r', 'http://schemas.openxmlformats.org/officeDocument/2006/relationships');
      builder.attribute('xmlns:w', 'http://schemas.openxmlformats.org/wordprocessingml/2006/main');
      builder.attribute('xmlns:w14', 'http://schemas.microsoft.com/office/word/2010/wordml');
      builder.attribute('xmlns:w15', 'http://schemas.microsoft.com/office/word/2012/wordml');
      builder.attribute('mc:Ignorable', 'w14 w15');
    });
    return this;
  }
}
