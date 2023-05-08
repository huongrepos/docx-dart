// One inch equates to 914400 EMUs and a centimeter is 360000 one pixel equates to 9525
// https://openpyxl.readthedocs.io/en/stable/api/openpyxl.utils.units.html
typedef Emu = int;

int toPx(Emu v) {
  return v ~/ 9525;
}

int fromPx(Emu v) {
  return v * 9525;
}