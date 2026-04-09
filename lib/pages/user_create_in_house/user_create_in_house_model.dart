import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'user_create_in_house_widget.dart' show UserCreateInHouseWidget;
import 'package:flutter/material.dart';

class UserCreateInHouseModel extends FlutterFlowModel<UserCreateInHouseWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for nameTxt widget.
  FocusNode? nameTxtFocusNode;
  TextEditingController? nameTxtTextController;
  String? Function(BuildContext, String?)? nameTxtTextControllerValidator;
  // State field(s) for mailTxt widget.
  FocusNode? mailTxtFocusNode;
  TextEditingController? mailTxtTextController;
  String? Function(BuildContext, String?)? mailTxtTextControllerValidator;
  // State field(s) for passTxt widget.
  FocusNode? passTxtFocusNode;
  TextEditingController? passTxtTextController;
  late bool passTxtVisibility;
  String? Function(BuildContext, String?)? passTxtTextControllerValidator;
  // State field(s) for phoneTxt widget.
  FocusNode? phoneTxtFocusNode;
  TextEditingController? phoneTxtTextController;
  String? Function(BuildContext, String?)? phoneTxtTextControllerValidator;
  // State field(s) for locTxt widget.
  FocusNode? locTxtFocusNode;
  TextEditingController? locTxtTextController;
  String? Function(BuildContext, String?)? locTxtTextControllerValidator;
  // State field(s) for DropDownRole widget.
  String? dropDownRoleValue;
  FormFieldController<String>? dropDownRoleValueController;

  @override
  void initState(BuildContext context) {
    passTxtVisibility = false;
  }

  @override
  void dispose() {
    nameTxtFocusNode?.dispose();
    nameTxtTextController?.dispose();

    mailTxtFocusNode?.dispose();
    mailTxtTextController?.dispose();

    passTxtFocusNode?.dispose();
    passTxtTextController?.dispose();

    phoneTxtFocusNode?.dispose();
    phoneTxtTextController?.dispose();

    locTxtFocusNode?.dispose();
    locTxtTextController?.dispose();
  }
}
