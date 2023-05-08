import '../../types/mod.dart';
import 'mod.dart';
class RunProperty {
  RunStyle? style;
  Sz? sz;
  SzCs? szCs;
  Color? color;
  Highlight? highlight;
  VertAlign? vertAlign;
  Underline? underline;
  Bold? bold;
  BoldCs? boldCs;
  Italic? italic;
  ItalicCs? italicCs;
  Vanish? vanish;
  SpecVanish? specVanish;
  CharacterSpacing? characterSpacing;
  RunFonts? fonts;
  TextBorder? textBorder;
  Delete? del;
  Insert? ins;
  Strike? strike;

  RunProperty({
    this.style,
    this.sz,
    this.szCs,
    this.color,
    this.highlight,
    this.vertAlign,
    this.underline,
    this.bold,
    this.boldCs,
    this.italic,
    this.italicCs,
    this.vanish,
    this.specVanish,
    this.characterSpacing,
    this.fonts,
    this.textBorder,
    this.del,
    this.ins,
    this.strike,
  });

  factory RunProperty.defaultValues() => RunProperty();

  RunProperty withStyle(String styleId) {
    style = RunStyle(styleId);
    return this;
  }

  RunProperty withSize(int size) {
    sz = Sz(size);
    szCs = SzCs(size);
    return this;
  }

  RunProperty withSpacing(int spacing) {
    characterSpacing = CharacterSpacing(spacing);
    return this;
  }

  RunProperty withColor(String color) {
    this.color = Color(color);
    return this;
  }

  RunProperty withHighlight(String color) {
    highlight = Highlight(color);
    return this;
  }

  RunProperty withVertAlign(VertAlignType a) {
    vertAlign = VertAlign(a);
    return this;
  }

  RunProperty makeBold() {
    bold = Bold();
    boldCs = BoldCs();
    return this;
  }

  RunProperty disableBold() {
    bold = Bold().disable();
    boldCs = BoldCs().disable();
    return this;
  }

  RunProperty makeItalic() {
    italic = Italic();
    italicCs = ItalicCs();
    return this;
  }

  RunProperty makeStrike() {
    strike = Strike();
    return this;
  }

  RunProperty disableItalic() {
    italic = Italic().disable();
    italicCs = ItalicCs().disable();
    return this;
  }

  RunProperty withUnderline(String lineType) {
    underline = Underline(lineType);
    return this;
  }

  RunProperty makeVanish() {
    vanish = Vanish();
    return this;
  }

  RunProperty makeSpecVanish() {
    specVanish = SpecVanish();
    return this;
  }

  RunProperty withFonts(RunFonts font) {
    fonts = font;
    return this;
  }

  RunProperty withTextBorder(TextBorder b) {
    textBorder = b;
    return this;
  }

  RunProperty withDelete(Delete d) {
    del = d;
    return this;
  }

  RunProperty withInsert(Insert i) {
    ins = i;
    return this;
  }
}