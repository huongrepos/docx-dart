class TableProperty {
  TableWidth width;
  Justification justification;
  TableBorders borders;
  TableCellMargins margins;
  TableIndent indent;
  TableStyle style;
  TableLayout layout;

  TableProperty({
    this.width = const TableWidth(0, WidthType.auto),
    this.justification = const Justification('left'),
    this.borders = const TableBorders(),
    this.margins,
    this.indent,
    this.style,
    this.layout,
  });

  factory TableProperty.defaultSettings() => TableProperty();

  factory TableProperty.withoutBorders() => TableProperty(
    borders: TableBorders.withEmpty(),
  );

  TableProperty indent(int v) {
    return TableProperty(
      width: width,
      justification: justification,
      borders: borders,
      margins: margins,
      indent: TableIndent(v, WidthType.dxa),
      style: style,
      layout: layout,
    );
  }

  TableProperty setWidth(int v, WidthType t) {
    return TableProperty(
      width: TableWidth(v, t),
      justification: justification,
      borders: borders,
      margins: margins,
      indent: indent,
      style: style,
      layout: layout,
    );
  }

  TableProperty align(TableAlignmentType v) {
    return TableProperty(
      width: width,
      justification: Justification(v.toString()),
      borders: borders,
      margins: margins,
      indent: indent,
      style: style,
      layout: layout,
    );
  }

  TableProperty setMargins(TableCellMargins margins) {
    return TableProperty(
      width: width,
      justification: justification,
      borders: borders,
      margins: margins,
      indent: indent,
      style: style,
      layout: layout,
    );
  }

  TableProperty cellMarginTop(int v, WidthType t) {
    return TableProperty(
      width: width,
      justification: justification,
      borders: borders,
      margins: margins?.marginTop(v, t) ?? TableCellMargins(),
      indent: indent,
      style: style,
      layout: layout,
    );
  }

  TableProperty cellMarginRight(int v, WidthType t) {
    return TableProperty(
      width: width,
      justification: justification,
      borders: borders,
      margins: margins?.marginRight(v, t) ?? TableCellMargins(),
      indent: indent,
      style: style,
      layout: layout,
    );
  }

  TableProperty cellMarginBottom(int v, WidthType t) {
    return TableProperty(
      width: width,
      justification: justification,
      borders: borders,
      margins: margins?.marginBottom(v, t) ?? TableCellMargins(),
      indent: indent,
      style: style,
      layout: layout,
    );
  }

  TableProperty cellMarginLeft(int v, WidthType t) {
    return TableProperty(
      width: width,
      justification: justification,
      borders: borders,
      margins: margins?.marginLeft(v, t) ?? TableCellMargins(),
      indent: indent,
      style: style,
      layout: layout,
    );
  }

  TableProperty setBorders(TableBorders borders) {
    return TableProperty(
      width: width,
      justification: justification,
      borders: borders,
      margins: margins,
      indent: indent,
      style: style,
      layout: layout,
    );
  }

  TableProperty setBorder(TableBorder border) {
    return TableProperty(
      width: width,
      justification: justification,
      borders: borders.set(border),
      margins: margins,
      indent: indent,
      style: style,
      layout: layout,
    );
  }

  TableProperty clearBorder(TableBorderPosition position) {
    return TableProperty(
      width: width,
      justification: justification,
      borders: borders.clear(position),
      margins: margins,
      indent: indent,
      style: style,
      layout: layout,
    );
  }

  TableProperty clearAllBorder() {
    return TableProperty(
      width: width,
      justification: justification,
      borders: borders.clearAll(),
      margins: margins,
      indent: indent,
      style: style,
      layout: layout,
    );
  }

  TableProperty setStyle(String s) {
    return TableProperty(
      width: width,
      justification: justification,
      borders: borders,
      margins: margins,
      indent: indent,
      style: TableStyle(s),
      layout: layout,
    );
  }

  TableProperty setLayout(TableLayoutType t) {
    return TableProperty(
      width: width,
      justification: justification,
      borders: borders,
      margins: margins,
      indent: indent,
      style: style,
      layout: TableLayout(t),
    );
  }
}