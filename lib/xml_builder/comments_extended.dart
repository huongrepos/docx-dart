import 'mod.dart';

extension CommentsExtented on XMLBuilder {

  XMLBuilder openCommentsExtended() {
        builder.element('w15:commentsEx', nest: () {

    builder.attribute('xmlns:wpc',
        'http://schemas.microsoft.com/office/word/2010/wordprocessingCanvas');
        builder.attribute(
        'xmlns:cx', 'http://schemas.microsoft.com/office/drawing/2014/chartex');
        builder.attribute('xmlns:cx1',
        'http://schemas.microsoft.com/office/drawing/2015/9/8/chartex');
        builder.attribute('xmlns:cx2',
        'http://schemas.microsoft.com/office/drawing/2015/10/21/chartex');
        builder.attribute('xmlns:cx3',
        'http://schemas.microsoft.com/office/drawing/2016/5/9/chartex');
        builder.attribute('xmlns:cx4',
        'http://schemas.microsoft.com/office/drawing/2016/5/10/chartex');
        builder.attribute('xmlns:cx5',
        'http://schemas.microsoft.com/office/drawing/2016/5/11/chartex');
        builder.attribute('xmlns:cx6',
        'http://schemas.microsoft.com/office/drawing/2016/5/12/chartex');
        builder.attribute('xmlns:cx7',
        'http://schemas.microsoft.com/office/drawing/2016/5/13/chartex');
        builder.attribute('xmlns:cx8',
        'http://schemas.microsoft.com/office/drawing/2016/5/14/chartex');
        builder.attribute('xmlns:mc',
        'http://schemas.openxmlformats.org/markup-compatibility/2006');
        builder.attribute('xmlns:aink',
        'http://schemas.microsoft.com/office/drawing/2016/ink');
        builder.attribute('xmlns:am3d',
        'http://schemas.microsoft.com/office/drawing/2017/model3d');
        builder.attribute('xmlns:o', 'urn:schemas-microsoft-com:office:office');
        builder.attribute('xmlns:r',
        'http://schemas.openxmlformats.org/officeDocument/2006/relationships');
        builder.attribute(
        'xmlns:m', 'http://schemas.openxmlformats.org/officeDocument/2006/math');
        builder.attribute('xmlns:v', 'urn:schemas-microsoft-com:vml');
        builder.attribute('xmlns:wp14',
        'http://schemas.microsoft.com/office/word/2010/wordprocessingDrawing');
        builder.attribute('xmlns:wp',
        'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing');
        builder.attribute('xmlns:w10', 'urn:schemas-microsoft-com:office:word');
        builder.attribute('xmlns:w',
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main');
        builder.attribute(
        'xmlns:w14', 'http://schemas.microsoft.com/office/word/2010/wordml');
        builder.attribute(
        'xmlns:w15', 'http://schemas.microsoft.com/office/word/2012/wordml');
        builder.attribute('xmlns:w16cex',
        'http://schemas.microsoft.com/office/word/2018/wordml/cex');
        builder.attribute('xmlns:w16cid',
        'http://schemas.microsoft.com/office/word/2016/wordml/cid');
        builder.attribute(
        'xmlns:w16', 'http://schemas.microsoft.com/office/word/2018/wordml');
        builder.attribute('xmlns:w16se',
        'http://schemas.microsoft.com/office/word/2015/wordml/symex');
        builder.attribute('xmlns:wpg',
        'http://schemas.microsoft.com/office/word/2010/wordprocessingGroup');
        builder.attribute('xmlns:wpi',
        'http://schemas.microsoft.com/office/word/2010/wordprocessingInk');
        builder.attribute(
        'xmlns:wne', 'http://schemas.microsoft.com/office/word/2006/wordml');
        builder.attribute('xmlns:wps', 'http://schemas.microsoft.com/office/word/2010');
        });
        return this;
  }
}