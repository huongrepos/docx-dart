// class Pic {
//   String id;
//   List<int> image;
//   Tuple2<int, int> size;
//   DrawingPositionType positionType;
//   bool simplePos;
//   int simplePosX;
//   int simplePosY;
//   bool layoutInCell;
//   int relativeHeight;
//   bool allowOverlap;
//   DrawingPosition positionH;
//   DrawingPosition positionV;
//   RelativeFromHType relativeFromH;
//   RelativeFromVType relativeFromV;
//   int distT;
//   int distB;
//   int distL;
//   int distR;
//   int rot;
//
//   Pic(List<int> buf) {
//     id = createPicRid(generatePicId());
//     var dimg = decodeImage(buf)!;
//     size = Tuple2(fromPx(dimg.width), fromPx(dimg.height));
//     image = encodePng(dimg);
//     positionType = DrawingPositionType.inline;
//     simplePos = false;
//     simplePosX = 0;
//     simplePosY = 0;
//     layoutInCell = false;
//     relativeHeight = 190500;
//     allowOverlap = false;
//     positionH = DrawingPosition.offset(0);
//     positionV = DrawingPosition.offset(0);
//     relativeFromH = RelativeFromHType.defaultType();
//     relativeFromV = RelativeFromVType.defaultType();
//     distT = 0;
//     distB = 0;
//     distL = 0;
//     distR = 0;
//     rot = 0;
//   }
//
//   Pic.empty() {
//     id = "";
//     image = [];
//     size = Tuple2(0, 0);
//     positionType = DrawingPositionType.inline;
//     simplePos = false;
//     simplePosX = 0;
//     simplePosY = 0;
//     layoutInCell = false;
//     relativeHeight = 190500;
//     allowOverlap = false;
//     positionH = DrawingPosition.offset(0);
//     positionV = DrawingPosition.offset(0);
//     relativeFromH = RelativeFromHType.defaultType();
//     relativeFromV = RelativeFromVType.defaultType();
//     distT = 0;
//     distB = 0;
//     distL = 0;
//     distR = 0;
//     rot = 0;
//   }
//
//   Pic setId(String id) {
//     this.id = id;
//     return this;
//   }
//
//   Pic setSize(int wEmu, int hEmu) {
//     size = Tuple2(wEmu, hEmu);
//     return this;
//   }
//
//   Pic setRotate(int deg) {
//     rot = deg;
//     return this;
//   }
//
//   Pic setFloating() {
//     positionType = DrawingPositionType.anchor;
//     return this;
//   }
//
//   Pic setOverlapping() {
//     allowOverlap = true;
//     return this;
//   }
//
//   Pic setOffsetX(int x) {
//     positionH = DrawingPosition.offset(x);
//     return this;
//   }
//
//   Pic setOffsetY(int y) {
//     positionV = DrawingPosition.offset(y);
//     return this;
//   }
//
//   Pic setPositionH(DrawingPosition pos) {
//     positionH = pos;
//     return this;
//   }
//
//   Pic setPositionV(DrawingPosition pos) {
//     positionV = pos;
//     return this;
//   }
//
//   Pic setRelativeFromH(RelativeFromHType t) {
//     relativeFromH = t;
//     return this;
//   }
//
//   Pic setRelativeFromV(RelativeFromVType t) {
//     relativeFromV = t;
//     return this;
//   }
//
//   Pic setDistT(int v) {
//     distT = v;
//     return this;
//   }
//
//   Pic setDistB(int v) {
//     distB = v;
//     return this;
//   }
//
//   Pic setDistL(int v) {
//     distL = v;
//     return this;
//   }
//
//   Pic setDistR(int v) {
//     distR = v;
//     return this;
//   }
//
//   Pic setSimplePos(bool v) {
//     simplePos = v;
//     return this;
//   }
//
//   Pic setRelativeHeight(int v) {
//     relativeHeight = v;
//     return this;
//   }
// }