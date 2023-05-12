import 'dart:convert';

class StyleWithLevel {
  List<dynamic>? data;

  StyleWithLevel(String s, int l) : data = [s, l];

  static StyleWithLevel newStyleWithLevel(String s, int l) {
    return StyleWithLevel(s, l);
  }

  String get s => data![0];
  int get l => data![1];
}
class InstrToC {
  List<int>? headingStylesRange;
  List<int>? tcFieldLevelRange;
  List<int>? omitPageNumbersLevelRange;
  String? entryBookmarkName;
  List<StyleWithLevel> stylesWithLevels;
  String? entryAndPageNumberSeparator;
  String? sequenceAndPageNumbersSeparator;
  String? captionLabel;
  String? captionLabelIncludingNumbers;
  String? seqFieldIdentifierForPrefix;
  String? tcFieldIdentifier;
  bool hyperlink;
  bool preserveTab;
  bool preserveNewLine;
  bool useAppliedParagraphLineLevel;
  bool hideTabAndPageNumbersInWebview;

  InstrToC({
    this.headingStylesRange,
    this.tcFieldLevelRange,
    this.omitPageNumbersLevelRange,
    this.entryBookmarkName,
    this.stylesWithLevels = const [],
    this.entryAndPageNumberSeparator,
    this.sequenceAndPageNumbersSeparator,
    this.captionLabel,
    this.captionLabelIncludingNumbers,
    this.seqFieldIdentifierForPrefix,
    this.tcFieldIdentifier,
    this.hyperlink = false,
    this.preserveTab = false,
    this.preserveNewLine = false,
    this.useAppliedParagraphLineLevel = false,
    this.hideTabAndPageNumbersInWebview = false,
  });

  // factory InstrToC.fromInstrText(String s) {
  //   return InstrToC.fromJson(json.decode(s));
  // }
  //
  // factory InstrToC.fromJson(Map<String, dynamic> json) {
  //   return InstrToC(
  //     headingStylesRange: json['heading_styles_range'] != null
  //         ? Tuple2(json['heading_styles_range'][0], json['heading_styles_range'][1])
  //         : null,
  //     tcFieldLevelRange: json['tc_field_level_range'] != null
  //         ? Tuple2(json['tc_field_level_range'][0], json['tc_field_level_range'][1])
  //         : null,
  //     omitPageNumbersLevelRange: json['omit_page_numbers_level_range'] != null
  //         ? Tuple2(json['omit_page_numbers_level_range'][0], json['omit_page_numbers_level_range'][1])
  //         : null,
  //     entryBookmarkName: json['entry_bookmark_name'],
  //     stylesWithLevels: List<StyleWithLevel>.from(
  //         json['styles_with_levels']?.map((style) => StyleWithLevel.fromJson(style)) ?? []),
  //     entryAndPageNumberSeparator: json['entry_and_page_number_separator'],
  //     sequenceAndPageNumbersSeparator: json['sequence_and_page_numbers_separator'],
  //     captionLabel: json['caption_label'],
  //     captionLabelIncludingNumbers: json['caption_label_including_numbers'],
  //     seqFieldIdentifierForPrefix: json['seq_field_identifier_for_prefix'],
  //     tcFieldIdentifier: json['tc_field_identifier'],
  //     hyperlink: json['hyperlink'] ?? false,
  //     preserveTab: json['preserve_tab'] ?? false,
  //     preserveNewLine: json['preserve_new_line'] ?? false,
  //     useAppliedParagraphLineLevel: json['use_applied_paragraph_line_level'] ?? false,
  //     hideTabAndPageNumbersInWebview: json['hide_tab_and_page_numbers_in_webview'] ?? false,
  //   );
  // }
  //
  // Map<String, dynamic> toJson() {
  //   return {
  //     if (headingStylesRange != null) 'heading_styles_range': [headingStylesRange!.item1, headingStylesRange!.item2],
  //     if (tcFieldLevelRange != null) 'tc_field_level_range': [tcFieldLevelRange!.item1, tcFieldLevelRange!.item2],
  //     if (omitPageNumbersLevelRange != null)
  //       'omit_page_numbers_level_range': [omitPageNumbersLevelRange!.item1, omitPageNumbersLevelRange!.item2],
  //     if (entryBookmarkName != null) 'entry_bookmark_name': entryBookmarkName,
  //     'styles_with_levels': stylesWithLevels.map((style) => style.toJson()).toList(),
  //     if (entryAndPageNumberSeparator != null) 'entry_and_page_number_separator': entryAndPageNumberSeparator,
  //     if (sequenceAndPageNumbersSeparator != null)
  //       'sequence_and_page_numbers_separator': sequenceAndPageNumbersSeparator,
  //     if (captionLabel != null) 'caption_label': captionLabel,
  //     if (captionLabelIncludingNumbers != null)
  //       'caption_label_including_numbers': captionLabelIncludingNumbers,
  //     if (seqFieldIdentifierForPrefix != null) 'seq_field_identifier_for_prefix': seqFieldIdentifierForPrefix,
  //     if (tcFieldIdentifier != null) 'tc_field_identifier': tcFieldIdentifier,
  //     'hyperlink': hyperlink,
  //     'preserve_tab': preserveTab,
  //     'preserve_new_line': preserveNewLine,
  //     'use_applied_paragraph_line_level': useAppliedParagraphLineLevel,
  //     'hide_tab_and_page_numbers_in_webview': hideTabAndPageNumbersInWebview,
  //   };
  // }

  InstrToC copyWith({
    List<int>? headingStylesRange,
    List<int>? tcFieldLevelRange,
    List<int>? omitPageNumbersLevelRange,
    String? entryBookmarkName,
    List<StyleWithLevel>? stylesWithLevels,
    String? entryAndPageNumberSeparator,
    String? sequenceAndPageNumbersSeparator,
    String? captionLabel,
    String? captionLabelIncludingNumbers,
    String? seqFieldIdentifierForPrefix,
    String? tcFieldIdentifier,
    bool? hyperlink,
    bool? preserveTab,
    bool? preserveNewLine,
    bool? useAppliedParagraphLineLevel,
    bool? hideTabAndPageNumbersInWebview,
  }) {
    return InstrToC(
      headingStylesRange: headingStylesRange ?? this.headingStylesRange,
      tcFieldLevelRange: tcFieldLevelRange ?? this.tcFieldLevelRange,
      omitPageNumbersLevelRange: omitPageNumbersLevelRange ?? this.omitPageNumbersLevelRange,
      entryBookmarkName: entryBookmarkName ?? this.entryBookmarkName,
      stylesWithLevels: stylesWithLevels ?? this.stylesWithLevels,
      entryAndPageNumberSeparator: entryAndPageNumberSeparator ?? this.entryAndPageNumberSeparator,
      sequenceAndPageNumbersSeparator: sequenceAndPageNumbersSeparator ?? this.sequenceAndPageNumbersSeparator,
      captionLabel: captionLabel ?? this.captionLabel,
      captionLabelIncludingNumbers: captionLabelIncludingNumbers ?? this.captionLabelIncludingNumbers,
      seqFieldIdentifierForPrefix: seqFieldIdentifierForPrefix ?? this.seqFieldIdentifierForPrefix,
      tcFieldIdentifier: tcFieldIdentifier ?? this.tcFieldIdentifier,
      hyperlink: hyperlink ?? this.hyperlink,
      preserveTab: preserveTab ?? this.preserveTab,
      preserveNewLine: preserveNewLine ?? this.preserveNewLine,
      useAppliedParagraphLineLevel: useAppliedParagraphLineLevel ?? this.useAppliedParagraphLineLevel,
      hideTabAndPageNumbersInWebview: hideTabAndPageNumbersInWebview ?? this.hideTabAndPageNumbersInWebview,
    );
  }
}