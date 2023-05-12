import '../../types/mod.dart';
import '../../xml_builder/mod.dart';
import '../build_xml.dart';

class Tab implements BuildXML{
  TabValueType? val;
  TabLeaderType? leader;
  int? pos;

  Tab({this.val, this.leader, this.pos});

  factory Tab.newTab() {
    return Tab();
  }

  Tab setVal(TabValueType v) {
    val = v;
    return this;
  }

  Tab setLeader(TabLeaderType v) {
    leader = v;
    return this;
  }

  Tab setPos(int v) {
    pos = v;
    return this;
  }
  @override
  String build() {
    return XMLBuilder().tab(val, leader, pos).build();
  }
}
// void main() {
//   final builder = Tab().setLeader(TabLeaderType.dot);
//   print(builder.build());
// }