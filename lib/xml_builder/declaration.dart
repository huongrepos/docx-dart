import 'mod.dart';

extension Declaration on XMLBuilder {

  XMLBuilder declaration(bool? standalone) {
    builder.processing('xml', 'version="1.0"');
    // if (standalone != null) {
    //   buffer.write(' standalone="${standalone ? 'yes' : 'no'}"');
    // }
    // buffer.write('?>');
    return this;
  }

// Other methods...
}