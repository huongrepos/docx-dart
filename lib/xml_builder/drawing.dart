import 'package:xml/xml.dart';

class XmlBuilder {
  final XmlBuilder? _parent;
  final List<XmlNode> _children;

  XmlBuilder([XmlBuilder? parent]) : _parent = parent, _children = [];

  XmlBuilder openWpInline({
    String? distT,
    String? distB,
    String? distL,
    String? distR,
  }) {
    final builder = XmlBuilder(this);
    final element = XmlElement(
        XmlName('wp:inline'),
        [],
        [
          if (distT != null) XmlAttribute(XmlName('distT'), distT),
          if (distB != null) XmlAttribute(XmlName('distB'), distB),
          if (distL != null) XmlAttribute(XmlName('distL'), distL),
          if (distR != null) XmlAttribute(XmlName('distR'), distR),
        ],
        false);
    builder._children.add(element);
    return builder;
  }

  XmlBuilder openWpAnchor({
  String? distT,
  String? distB,
  String? distL,
  String? distR,
  String? simplePos,
  String? allowOverlap,
  String? behindDoc,
  String? locked,
  String? layoutInCell,
  String? relativeHeight,
  }) {
  final builder = XmlBuilder(this);
  final element = XmlElement(
  XmlName('wp:anchor'),
  [],
  [
  if (distT != null) XmlAttribute(XmlName('distT'), distT),
  if (distB != null) XmlAttribute(XmlName('distB'), distB),
  if (distL != null) XmlAttribute(XmlName('distL'), distL),
  if (distR != null) XmlAttribute(XmlName('distR'), distR),
  if (simplePos != null) XmlAttribute(XmlName('simplePos'), simplePos),
  if (allowOverlap != null) XmlAttribute(XmlName('allowOverlap'), allowOverlap),
  if (behindDoc != null) XmlAttribute(XmlName('behindDoc'), behindDoc),
  if (locked != null) XmlAttribute(XmlName('locked'), locked),
  if (layoutInCell != null) XmlAttribute(XmlName('layoutInCell'), layoutInCell),
  if (relativeHeight != null) XmlAttribute(XmlName('relativeHeight'), relativeHeight),
  ],
  false,
  );
  builder._children.add(element);
  return builder;
  }
  XmlBuilder openAGraphic({String? xmlns}) {
    final builder = XmlBuilder(this);
    final element = XmlElement(
      XmlName('a:graphic'),
      [],
      [
        if (xmlns != null) XmlAttribute(XmlName('xmlns:a'), xmlns),
      ],
      false,
    );
    builder._children.add(element);
    return builder;
  }
  XmlBuilder openAGraphicData({String? uri}) {
    final builder = XmlBuilder(this);
    final element = XmlElement(
      XmlName('a:graphicData'),
      [],
      [
        if (uri != null) XmlAttribute(XmlName('uri'), uri),
      ],
      false,
    );
    builder._children.add(element);
    return builder;
  }
  XmlBuilder wpExtent({required String cx, required String cy}) {
    final builder = XmlBuilder(this);
    final element = XmlElement(
      XmlName('wp:extent'),
      [],
      [
        XmlAttribute(XmlName('cx'), cx),
        XmlAttribute(XmlName('cy'), cy),
      ],
      true,
    );
    builder._children.add(element);
    return builder;
  }
  XmlBuilder wpEffectExtent({
    required String b,
    required String l,
    required String r,
    required String t,
  }) {
    final builder = XmlBuilder(this);
    final element = XmlElement(
      XmlName('wp:effectExtent'),
      [],
      [
        XmlAttribute(XmlName('b'), b),
        XmlAttribute(XmlName('l'), l),
        XmlAttribute(XmlName('r'), r),
        XmlAttribute(XmlName('t'), t),
      ],
      true,
    );
    builder._children.add(element);
    return builder;
  }
  XmlBuilder wpDocPr({required String id, required String name}) {
    final builder = XmlBuilder(this);
    final element = XmlElement(
      XmlName('wp:docPr'),
      [],
      [
        XmlAttribute(XmlName('id'), id),
        XmlAttribute(XmlName('name'), name),
      ],
      true,
    );
    builder._children.add(element);
    return builder;
  }
  XmlBuilder openWpCNvGraphicFramePr() {
    final builder = XmlBuilder(this);
    final element = XmlElement(
      XmlName('wp:cNvGraphicFramePr'),
      [],
      [],
      false,
    );
    builder._children.add(element);
    return builder;
  }
  XmlBuilder aGraphicFrameLocks({
    required String xmlnsA,
    required bool noChangeAspect,
  }) {
    final builder = XmlBuilder(this);
    final element = XmlElement(
      XmlName('a:graphicFrameLocks'),
      [],
      [
        XmlAttribute(XmlName('xmlns:a'), xmlnsA),
        XmlAttribute(XmlName('noChangeAspect'), noChangeAspect ? '1' : '0'),
      ],
      true,
    );
    builder._children.add(element);
    return builder;
  }
  XmlBuilder simplePos({
    required String x,
    required String y,
  }) {
    final builder = XmlBuilder(this);
    final element = XmlElement(
      XmlName('wp:simplePos'),
      [],
      [
        XmlAttribute(XmlName('x'), x),
        XmlAttribute(XmlName('y'), y),
      ],
      true,
    );
    builder._children.add(element);
    return builder;
  }
  XmlBuilder openPositionH({required String relativeFrom}) {
    final builder = XmlBuilder(this);
    final element = XmlElement(
      XmlName('wp:positionH'),
      [],
      [
        XmlAttribute(XmlName('relativeFrom'), relativeFrom),
      ],
      false,
    );
    builder._children.add(element);
    return builder;
  }
  XmlBuilder openPositionV({required String relativeFrom}) {
    final builder = XmlBuilder(this);
    final element = XmlElement(
      XmlName('wp:positionV'),
      [],
      [
        XmlAttribute(XmlName('relativeFrom'), relativeFrom),
      ],
      false,
    );
    builder._children.add(element);
    return builder;
  }
  XmlBuilder posOffset(String child) {
    final builder = XmlBuilder(this);
    final element = XmlElement(
      XmlName('wp:posOffset'),
      [],
      [],
      true,
    );
    element.children.add(XmlText(child));
    builder._children.add(element);
    return builder;
  }
  XmlBuilder align(String child) {
    final builder = XmlBuilder(this);
    final element = XmlElement(
      XmlName('wp:align'),
      [],
      [],
      true,
    );
    element.children.add(XmlText(child));
    builder._children.add(element);
    return builder;
  }
  XmlBuilder wrapNone() {
    final builder = XmlBuilder(this);
    final element = XmlElement(
      XmlName('wp:wrapNone'),
      [],
      [],
      true,
    );
    builder._children.add(element);
    return builder;
  }
  XmlBuilder wrapSquare({String? wrapText}) {
    final builder = XmlBuilder(this);
    final element = XmlElement(
      XmlName('wp:wrapSquare'),
      [],
      [],
      true,
    );
    if (wrapText != null) {
      element.attributes.add(XmlAttribute(XmlName('wrapText'), wrapText));
    }
    builder._children.add(element);
    return builder;
  }
  String build() {
    final builder = XmlBuilder();
    builder._children.addAll(_children);
    return builder.build().toString();
  }

  XmlDocument buildDocument() {
    final builder = XmlBuilder();
    builder._children.addAll(_children);
    return builder.buildDocument();
  }
}