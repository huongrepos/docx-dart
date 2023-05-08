import 'dart:io';

import '../zipper/mod.dart';

class XMLDocx {
  String contentType;
  String rels;
  XMLDocProps docProps;
  String styles;
  String document;
  String comments;
  String documentRels;
  String settings;
  String fontTable;
  String numberings;
  Map<String, String> media;
  List<String> headers;
  List<String> footers;
  String commentsExtended;
  String? taskpanes;
  String taskpanesRels;
  List<String> webExtensions;
  List<String> customItems;
  List<String> customItemRels;
  List<String> customItemProps;

  XMLDocx({
    required this.contentType,
    required this.rels,
    required this.docProps,
    required this.styles,
    required this.document,
    required this.comments,
    required this.documentRels,
    required this.settings,
    required this.fontTable,
    required this.numberings,
    required this.media,
    required this.headers,
    required this.footers,
    required this.commentsExtended,
    required this.taskpanes,
    required this.taskpanesRels,
    required this.webExtensions,
    required this.customItems,
    required this.customItemRels,
    required this.customItemProps,
  });

  void pack(File file) {
    zip(file, this);
  }
}

class XMLDocProps {
  String app;
  String core;
  String custom;

  XMLDocProps({
    required this.app,
    required this.core,
    required this.custom,
  });
}