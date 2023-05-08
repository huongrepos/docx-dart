import 'dart:math';
int findIndexSubStringWithOrder(String str, String subStr, int order) {
  var startIndex = 0;
  for (var i = 0; i < order; i++) {
    final index = str.indexOf(subStr, startIndex);
    if (index == -1) {
      throw Exception('Substring not found');
    }
    startIndex = index + subStr.length;
  }
  return startIndex;
}
String addSubStringFromIndex(String old, String subStr, int index){
  return old.substring(0, index) + subStr + old.substring(index);
}

final _paraId = Random.secure();

String generateParaId() {
  final id = _paraId.nextInt(pow(2, 32).toInt()).toUnsigned(32);
  return id.toRadixString(16).padLeft(8, '0');
}