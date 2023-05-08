import 'package:xml/xml.dart';
import 'package:xml/xml_events.dart';

void writeStartElement(XmlWriter writer, String name) {
  XmlEventAttribute eventAttribute = XmlEventAttribute("ok", "okvalue", XmlAttributeType.SINGLE_QUOTE);
  List<XmlEventAttribute> exls = [];
  exls.add(eventAttribute);
  print(XmlStartElementEvent("id", exls, true));
}
void main(){
  List<XmlEventAttribute> exls = <XmlEventAttribute>[XmlEventAttribute("val", "okvalue", XmlAttributeType.SINGLE_QUOTE)]; ;
  print(XmlStartElementEvent("id", exls, false));
  print(XmlEndElementEvent("id"));
  var builder = XmlBuilder();
  builder.element('root', nest: () {
    builder.element('child', nest: () {
      builder.text('Hello, world!');
    });
  });

  var fragment = builder.buildFragment();
  var element = fragment.children[0] as XmlElement;
  // var event = element.toStartElementEvent();
  // print(event);
}