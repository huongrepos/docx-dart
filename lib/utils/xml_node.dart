import 'package:xml/xml.dart';
void setTextContent(XmlNode node, String content) {
  // Clear the existing children of the node
  node.children.clear();

  // Set the text content of the node
  node.children.add(XmlText(content));
}