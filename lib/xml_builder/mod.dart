export 'comments.dart';
export 'comments_extended.dart';
export 'elements.dart';
import 'package:xml/xml.dart';
import 'package:xml/xml_events.dart';

import '../documents/build_xml.dart';

class XMLBuilder {
  late final List<String> writer = <String>[];
  late final List<String> stack = <String>[];

  XMLBuilder openTypes(String uri) {
    List<XmlEventAttribute> listAttr = <XmlEventAttribute>[XmlEventAttribute("xmlns", uri, XmlAttributeType.SINGLE_QUOTE)];
    // List<XmlEventAttribute> listAttr = [];
    stack.add('Types');
    writer.add(XmlStartElementEvent("Types", listAttr, false).toString());
    return this;
  }

  XMLBuilder addOverride(String name, String contentType) {
    XmlBuilder builder = XmlBuilder();
    builder.element('Override', nest: () {
      builder.attribute('PartName', name);
      builder.attribute('ContentType', contentType);
    });
    writer.add(builder.buildDocument().toXmlString());
    return close();
  }

  XMLBuilder addDefault(String name, String extension) {
    XmlBuilder builder = XmlBuilder();
    builder.element('Default', nest: () {
      builder.attribute('ContentType', extension);
      builder.attribute('Extension', name);
    });
    writer.add(builder.buildDocument().toXmlString());
    return close();
  }

  XMLBuilder addChild<T extends BuildXML>(T child) {
    writer.add(child.build());
    return this;
  }
  //
  // XMLBuilder addBytes(List<int> child) {
  //   var text = String.fromCharCodes(child);
  //   builder.write(text);
  //   return this;
  // }
  //
  XMLBuilder addOptionalChild<T extends BuildXML>(T? child) {
    if (child != null) {
      addChild(child);
    }
    return this;
  }
  XMLBuilder addChildren<T extends BuildXML>(List<T> children) {
    for (var c in children) {
      addChild(c);
    }
    return this;
  }
  XMLBuilder close() {
    if(stack.isNotEmpty){
     String id = stack.last;
     writer.add(XmlEndElementEvent(id).toString());
     stack.removeLast();
    }
    return this;
  }
  String build() {
    return writer.join();
  }
}
