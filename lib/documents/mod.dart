import 'dart:typed_data';
import 'package:docx_dart/documents/rels.dart';
import 'package:tuple/tuple.dart';

import 'content_types.dart';

class Docx {
  ContentTypes contentTypes;
  Rels rels;
  DocumentRels documentRels;
  DocProps docProps;
  Styles styles;
  Document document;
  Comments comments;
  Numberings numberings;
  Settings settings;
  FontTable fontTable;
  List<Tuple2<String, Uint8List>> media;
  CommentsExtended commentsExtended;
  WebSettings webSettings;
  Taskpanes? taskpanes;
  TaskpanesRels taskpanesRels;
  List<WebExtension> webExtensions;
  List<CustomItem> customItems;
  List<CustomItemProperty> customItemProps;
  List<CustomItemRels> customItemRels;
  List<Theme> themes;
  List<Tuple4<String, String, Image, Png>> images;
  List<Tuple3<String, String, String>> hyperlinks;

  Docx({
    this.contentTypes = const ContentTypes(),
    this.rels = const Rels(),
    this.documentRels = const DocumentRels(),
    required this.docProps,
    this.styles = const Styles(),
    this.document = const Document(),
    this.comments = const Comments(),
    this.numberings = const Numberings(),
    this.settings = const Settings(),
    this.fontTable = const FontTable(),
    this.media = const [],
    this.commentsExtended = const CommentsExtended(),
    this.webSettings = const WebSettings(),
    this.taskpanes,
    this.taskpanesRels = const TaskpanesRels(),
    this.webExtensions = const [],
    this.customItems = const [],
    this.customItemProps = const [],
    this.customItemRels = const [],
    this.themes = const [],
    this.images = const [],
    this.hyperlinks = const [],
  });

  factory Docx.defaultDocx() {
    final contentTypes = ContentTypes().setDefault();
    final rels = Rels().setDefault();
    final docProps = DocProps(CorePropsConfig());
    final styles = Styles();
    final document = Document();
    final documentRels = DocumentRels();
    final settings = Settings();
    final fontTable = FontTable();
    final comments = Comments();
    final numberings = Numberings();
    final media = [];
    final commentsExtended = CommentsExtended();
    final webSettings = WebSettings();

    return Docx(
      contentTypes: contentTypes,
      rels: rels,
      documentRels: documentRels,
      docProps: docProps,
      styles: styles,
      document: document,
      comments: comments,
      numberings: numberings,
      settings: settings,
      fontTable: fontTable,
      media: media,
      commentsExtended: commentsExtended,
      webSettings: webSettings,
      taskpanes: null,
      taskpanesRels: TaskpanesRels(),
      webExtensions: [],
      customItems: [],
      customItemProps: [],
      customItemRels: [],
      themes: [],
      images: [],
      hyperlinks: [],
    );
  }
}