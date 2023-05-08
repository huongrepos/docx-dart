import 'package:xml/xml.dart';

class XMLBuilder {
  final XmlBuilder builder;

  XMLBuilder(this.builder);

  // Build pic:pic element
  openPic(String xmlns) {
    builder.element('pic:pic', nest: () {
      builder.attribute('xmlns:pic', xmlns);
    });
    return this;
  }

  // Build pic:blipFill element
  openBlipFill() {
    builder.element('pic:blipFill');
    return this;
  }

  // Build a:blip element
  aBlip(String rEmbed) {
    builder.element('a:blip', nest: () {
      builder.attribute('r:embed', rEmbed);
    });
    return this;
  }

  // Build a:srcRect element
  aSrcRect() {
    builder.element('a:srcRect');
    return this;
  }

  // Build a:stretch element
  openAStretch() {
    builder.element('a:stretch');
    return this;
  }

  // Build a:fillRect element
  aFillRect() {
    builder.element('a:fillRect');
    return this;
  }

  // Build pic:nvPicPr element
  openPicNvPicPr() {
    builder.element('pic:nvPicPr');
    return this;
  }

  // Build pic:cNvPr element
  picCNvPr(String id, String name) {
    builder.element('pic:cNvPr', nest: () {
      builder.attribute('id', id);
      builder.attribute('name', name);
    });
    return this;
  }

  // Build pic:cNvPicPr element
  openPicCNvPicPr() {
    builder.element('pic:cNvPicPr');
    return this;
  }

  // Build a:picLocks element
  aPicLocks(String noChangeAspect, String noChangeArrowheads) {
    builder.element('a:picLocks', nest: () {
      builder.attribute('noChangeAspect', noChangeAspect);
      builder.attribute('noChangeArrowheads', noChangeArrowheads);
    });
    return this;
  }

  // Build pic:spPr element
  openPicSpPr(String bwMode) {
    builder.element('pic:spPr', nest: () {
      builder.attribute('bwMode', bwMode);
    });
    return this;
  }

  // Build a:xfrm element
  openAXfrm() {
    builder.element('a:xfrm');
    return this;
  }

  // Build a:xfrm element with rot attribute
  openAXfrmWithRot(String rot) {
    builder.element('a:xfrm', nest: () {
      builder.attribute('rot', rot);
    });
    return this;
  }

  // Build a:off element
  aOff(String x, String y) {
    builder.element('a:off', nest: () {
      builder.attribute('x', x);
      builder.attribute('y', y);
    });
    return this;
  }

  // Build a:ext element
  aExt(String cx, String cy) {
    builder.element('a:ext', nest: () {
      builder.attribute('cx', cx);
      builder.attribute('cy', cy);
    });
    return this;
  }

  // Build a:prstGeom element
  openAPrstGeom(String prst) {
    builder.element('a:prstGeom', nest: () {
      builder.attribute('prst', prst);
    });
    return this;
  }

  // Build a:avLst element
  aAvLst() {
    builder.element('a:avLst');
    return this;
  }
}