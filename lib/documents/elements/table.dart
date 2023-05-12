import 'mod.dart';

class Table {
  List<TableChild> rows;
  List<int> grid;
  bool hasNumbering;
  TableProperty property;

  Table({
    required this.rows,
    required this.grid,
    required this.hasNumbering,
    required this.property,
  });
}

class TableChild {}

class TableRow extends TableChild {
  List<TableCell> cells;

  TableRow({required this.cells});
}

class TableCell {
  List<Paragraph> paragraphs;

  TableCell({required this.paragraphs});
}
