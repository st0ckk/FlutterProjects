import '/flutter_flow/flutter_flow_util.dart';
import 'producto_create_widget.dart' show ProductoCreateWidget;
import 'package:flutter/material.dart';

class ProductoCreateModel extends FlutterFlowModel<ProductoCreateWidget> {
  ///  Local state fields for this component.

  String? uploadedImageUrl;

  ///  State fields for stateful widgets in this component.

  bool isDataUploading_uploadDataGhj = false;
  FFUploadedFile uploadedLocalFile_uploadDataGhj =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataGhj = '';

  // State field(s) for prodName widget.
  FocusNode? prodNameFocusNode;
  TextEditingController? prodNameTextController;
  String? Function(BuildContext, String?)? prodNameTextControllerValidator;
  // State field(s) for prodDesc widget.
  FocusNode? prodDescFocusNode;
  TextEditingController? prodDescTextController;
  String? Function(BuildContext, String?)? prodDescTextControllerValidator;
  // State field(s) for prodPrice widget.
  FocusNode? prodPriceFocusNode;
  TextEditingController? prodPriceTextController;
  String? Function(BuildContext, String?)? prodPriceTextControllerValidator;
  // State field(s) for prodSku widget.
  FocusNode? prodSkuFocusNode;
  TextEditingController? prodSkuTextController;
  String? Function(BuildContext, String?)? prodSkuTextControllerValidator;
  // State field(s) for prodQty widget.
  FocusNode? prodQtyFocusNode;
  TextEditingController? prodQtyTextController;
  String? Function(BuildContext, String?)? prodQtyTextControllerValidator;
  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    prodNameFocusNode?.dispose();
    prodNameTextController?.dispose();

    prodDescFocusNode?.dispose();
    prodDescTextController?.dispose();

    prodPriceFocusNode?.dispose();
    prodPriceTextController?.dispose();

    prodSkuFocusNode?.dispose();
    prodSkuTextController?.dispose();

    prodQtyFocusNode?.dispose();
    prodQtyTextController?.dispose();
  }
}
