import 'package:xml/xml.dart';

import 'test/mod.dart';


class XMLKBuilder {

  XmlBuilder openDocument() {
    var builder = XmlBuilder();
    XMLBuilder xmlBuilder = XMLBuilder(builder);
    builder.processing('xml', 'version="1.0"');
    xmlBuilder.openStyles2().openStyles1();
    // builder.element('w:document', nest: () {
    //   builder.attribute('xmlns:w', 'http://schemas.openxmlformats.org/wordprocessingml/2006/main');
    //   builder.attribute('xmlns:r', 'http://schemas.openxmlformats.org/officeDocument/2006/relationships');
    //   builder.element('w:body', nest: () {
    //     builder.element('w:p', nest: () {
    //       builder.element('w:r', nest: () {
    //         builder.element('w:t', nest: () {
    //           builder.text('Table Example');
    //         });
    //       });
    //     });
    //     builder.element('w:tbl', nest: () {
    //       builder.element('w:tblPr', nest: () {
    //         builder.element('w:tblStyle', nest: () {
    //           builder.attribute('w:val', 'TableGrid');
    //         });
    //         builder.element('w:tblW', nest: () {
    //           builder.attribute('w:w', '5000');
    //           builder.attribute('w:type', 'pct');
    //         });
    //       });
    //       builder.element('w:tr', nest: () {
    //         builder.element('w:tc', nest: () {
    //           builder.element('w:p', nest: () {
    //             builder.element('w:r', nest: () {
    //               builder.element('w:t', nest: () {
    //                 builder.text('Column 1');
    //               });
    //             });
    //           });
    //         });
    //         builder.element('w:tc', nest: () {
    //           builder.element('w:p', nest: () {
    //             builder.element('w:r', nest: () {
    //               builder.element('w:t', nest: () {
    //                 builder.text('Column 2');
    //               });
    //             });
    //           });
    //         });
    //         builder.element('w:tc', nest: () {
    //           builder.element('w:p', nest: () {
    //             builder.element('w:r', nest: () {
    //               builder.element('w:t', nest: () {
    //                 builder.text('Column 3');
    //               });
    //             });
    //           });
    //         });
    //       });
    //       builder.element('w:tr', nest: () {
    //         builder.element('w:tc', nest: () {
    //           builder.element('w:p', nest: () {
    //             builder.element('w:r', nest: () {
    //               builder.element('w:t', nest: () {
    //                 builder.text('Row 1, Column 1');
    //               });
    //             });
    //           });
    //         });
    //         builder.element('w:tc', nest: () {
    //           builder.element('w:p', nest: () {
    //             builder.element('w:r', nest: () {
    //               builder.element('w:t', nest: () {
    //                 builder.text('Row 1, Column 2');
    //               });
    //             });
    //           });
    //         });
    //         builder.element('w:tc', nest: () {
    //           builder.element('w:p', nest: () {
    //             builder.element('w:r', nest: () {
    //               builder.element('w:t', nest: () {
    //                 builder.text('Row 1, Column 3');
    //               });
    //             });
    //           });
    //         });
    //       });
    //       builder.element('w:tr', nest: () {
    //         builder.element('w:tc', nest: () {
    //           builder.element('w:p', nest: () {
    //             builder.element('w:r', nest: () {
    //               builder.element('w:t', nest: () {
    //                 builder.text('Row 2, Column 1');
    //               });
    //             });
    //           });
    //         });
    //         builder.element('w:tc', nest: () {
    //           builder.element('w:p', nest: () {
    //             builder.element('w:r', nest: () {
    //               builder.element('w:t', nest: () {
    //                 builder.text('Row 2, Column 2');
    //               });
    //             });
    //           });
    //         });
    //         builder.element('w:tc', nest: () {
    //           builder.element('w:p', nest: () {
    //             builder.element('w:r', nest: () {
    //               builder.element('w:t', nest: () {
    //                 builder.text('Row 2, Column 3');
    //               });
    //             });
    //           });
    //         });
    //       });
    //     });
    //   });
    // });
    return builder;
  }

}

void main() {
  final builder = XMLKBuilder();

  // Open the document
  XmlBuilder ok = builder.openDocument();

  var xmlDoc = ok.buildDocument();
  var xmlString = xmlDoc.toXmlString(pretty: true);
  // File('example.docx').writeAsStringSync(xmlString);
  print(xmlString);
}
