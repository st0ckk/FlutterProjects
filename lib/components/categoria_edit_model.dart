import '/flutter_flow/flutter_flow_util.dart';
import 'categoria_edit_widget.dart' show CategoriaEditWidget;
import 'package:flutter/material.dart';

class CategoriaEditModel extends FlutterFlowModel<CategoriaEditWidget> {
  ///  Local state fields for this component.

  String? uploadedImageUrl;

  ///  State fields for stateful widgets in this component.

  bool isDataUploading_uploadData71x = false;
  FFUploadedFile uploadedLocalFile_uploadData71x =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadData71x = '';

  // State field(s) for catNombre widget.
  FocusNode? catNombreFocusNode;
  TextEditingController? catNombreTextController;
  String? Function(BuildContext, String?)? catNombreTextControllerValidator;
  // State field(s) for catDesc widget.
  FocusNode? catDescFocusNode;
  TextEditingController? catDescTextController;
  String? Function(BuildContext, String?)? catDescTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    catNombreFocusNode?.dispose();
    catNombreTextController?.dispose();

    catDescFocusNode?.dispose();
    catDescTextController?.dispose();
  }
}
