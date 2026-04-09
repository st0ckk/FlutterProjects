import '/flutter_flow/flutter_flow_util.dart';
import 'crear_categoria_widget.dart' show CrearCategoriaWidget;
import 'package:flutter/material.dart';

class CrearCategoriaModel extends FlutterFlowModel<CrearCategoriaWidget> {
  ///  Local state fields for this component.

  String? uploadedImageUrl;

  ///  State fields for stateful widgets in this component.

  bool isDataUploading_uploadDataJ76 = false;
  FFUploadedFile uploadedLocalFile_uploadDataJ76 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataJ76 = '';

  // State field(s) for catName widget.
  FocusNode? catNameFocusNode;
  TextEditingController? catNameTextController;
  String? Function(BuildContext, String?)? catNameTextControllerValidator;
  // State field(s) for descrTxt widget.
  FocusNode? descrTxtFocusNode;
  TextEditingController? descrTxtTextController;
  String? Function(BuildContext, String?)? descrTxtTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    catNameFocusNode?.dispose();
    catNameTextController?.dispose();

    descrTxtFocusNode?.dispose();
    descrTxtTextController?.dispose();
  }
}
