export 'comments.dart';
export 'comments_extended.dart';
export 'elements.dart';

import 'package:xml/xml.dart';


class XMLBuilder {
  late  XmlBuilder builder;

  XMLBuilder(this.builder);

  XMLBuilder openTypes(String uri) {
    builder.element('Types', nest: () {
      builder.attribute('xmlns', uri);
    });
    return this;
  }

  XMLBuilder addOverride(String name, String contentType) {
    builder.element('Override', nest: () {
      builder.attribute('PartName', name);
      builder.attribute('ContentType', contentType);
    });
    return close();
  }

  XMLBuilder addDefault(String name, String extension) {
    builder.element('Default', nest: () {
      builder.attribute('ContentType', extension);
      builder.attribute('Extension', name);
    });
    return close();
  }

  // XMLBuilder addChild<T extends BuildXML>(T child) {
  //   builder.element(child.runtimeType.toString(), nest: () {
  //     builder.write(child.build());
  //   });
  //   return this;
  // }
  //
  // XMLBuilder addBytes(List<int> child) {
  //   var text = String.fromCharCodes(child);
  //   builder.write(text);
  //   return this;
  // }
  //
  // XMLBuilder addOptionalChild<T extends BuildXML>(T? child) {
  //   if (child != null) {
  //     addChild(child);
  //   }
  //   return this;
  // }
  //
  // XMLBuilder addChildren<T extends BuildXML>(List<T> children) {
  //   for (var c in children) {
  //     addChild(c);
  //   }
  //   return this;
  // }
  //
  XMLBuilder close() {
    // builder.pop();
    return this;
  }
  //
  // XMLBuilder plainText(String t) {
  //   builder.text(t);
  //   return this;
  // }
  //
  String build() {
    return builder.buildDocument().toXmlString(pretty: true);
  }
}
