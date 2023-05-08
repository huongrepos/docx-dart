import 'package:xml/xml.dart';

class XMLBuilder {
  final XmlBuilder builder;

  XMLBuilder(this.builder);

  // Build Properties element
  // i.e. <Properties xmlns:vt="http://schemas.openxmlformats.org/package/2006/relationships">
  XMLBuilder openProperties(String xmlns, String vt) {
    builder.element('Properties', nest: () {
      builder.attribute('xmlns', xmlns);
      builder.attribute('xmlns:vt', vt);
    });
    return this;
  }

  // Build Template element
  XMLBuilder template(String value) {
    builder.element('Template', nest: value);
    return this;
  }

  // Build TotalTime element
  XMLBuilder totalTime(String value) {
    builder.element('TotalTime', nest: value);
    return this;
  }

  // Build Application element
  XMLBuilder application(String value) {
    builder.element('Application', nest: value);
    return this;
  }

  // Build Pages element
  XMLBuilder pages(String value) {
    builder.element('Pages', nest: value);
    return this;
  }

  // Build Words element
  XMLBuilder words(String value) {
    builder.element('Words', nest: value);
    return this;
  }

  // Build Characters element
  XMLBuilder characters(String value) {
    builder.element('Characters', nest: value);
    return this;
  }

  // Build CharactersWithSpaces element
  XMLBuilder charactersWithSpaces(String value) {
    builder.element('CharactersWithSpaces', nest: value);
    return this;
  }

  // Build Paragraphs element
  XMLBuilder paragraphs(String value) {
    builder.element('Paragraphs', nest: value);
    return this;
  }
}