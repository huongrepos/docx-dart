import 'package:xml/xml.dart';

import 'mod.dart';

extension Declaration on XMLBuilder {

  XMLBuilder declaration([bool? standalone]) {
    XmlBuilder builder = XmlBuilder();
    builder.processing('xml', 'version="1.0"');
    // if (standalone != null) {
    //   buffer.write(' standalone="${standalone ? 'yes' : 'no'}"');
    // }
    // buffer.write('?>');
    writer.add(builder.buildDocument().toXmlString());
    return this;
  }

// Other methods...
}