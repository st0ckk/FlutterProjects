import '/flutter_flow/flutter_flow_util.dart';
import 'producto_edit_widget.dart' show ProductoEditWidget;
import 'package:flutter/material.dart';

class ProductoEditModel extends FlutterFlowModel<ProductoEditWidget> {
  ///  Local state fields for this component.

  String? uploadedImageUrl;

  ///  State fields for stateful widgets in this component.

  bool isDataUploading_uploadDataQqj = false;
  FFUploadedFile uploadedLocalFile_uploadDataQqj =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataQqj = '';

  // State field(s) for nameTxt widget.
  FocusNode? nameTxtFocusNode;
  TextEditingController? nameTxtTextController;
  String? Function(BuildContext, String?)? nameTxtTextControllerValidator;
  // State field(s) for descTxt widget.
  FocusNode? descTxtFocusNode;
  TextEditingController? descTxtTextController;
  String? Function(BuildContext, String?)? descTxtTextControllerValidator;
  // State field(s) for priceTxt widget.
  FocusNode? priceTxtFocusNode;
  TextEditingController? priceTxtTextController;
  String? Function(BuildContext, String?)? priceTxtTextControllerValidator;
  // State field(s) for skuTxt widget.
  FocusNode? skuTxtFocusNode;
  TextEditingController? skuTxtTextController;
  String? Function(BuildContext, String?)? skuTxtTextControllerValidator;
  // State field(s) for qtyTxt widget.
  FocusNode? qtyTxtFocusNode;
  TextEditingController? qtyTxtTextController;
  String? Function(BuildContext, String?)? qtyTxtTextControllerValidator;
  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameTxtFocusNode?.dispose();
    nameTxtTextController?.dispose();

    descTxtFocusNode?.dispose();
    descTxtTextController?.dispose();

    priceTxtFocusNode?.dispose();
    priceTxtTextController?.dispose();

    skuTxtFocusNode?.dispose();
    skuTxtTextController?.dispose();

    qtyTxtFocusNode?.dispose();
    qtyTxtTextController?.dispose();
  }
}
