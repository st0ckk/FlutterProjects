import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'user_create_widget.dart' show UserCreateWidget;
import 'package:flutter/material.dart';

class UserCreateModel extends FlutterFlowModel<UserCreateWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for NombreField widget.
  FocusNode? nombreFieldFocusNode;
  TextEditingController? nombreFieldTextController;
  String? Function(BuildContext, String?)? nombreFieldTextControllerValidator;
  String? _nombreFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es requerido';
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return 'Must start with a letter and can only contain letters, digits and - or _.';
    }
    return null;
  }

  // State field(s) for CorreoField widget.
  FocusNode? correoFieldFocusNode;
  TextEditingController? correoFieldTextController;
  String? Function(BuildContext, String?)? correoFieldTextControllerValidator;
  String? _correoFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es requerido';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for passwordField widget.
  FocusNode? passwordFieldFocusNode;
  TextEditingController? passwordFieldTextController;
  late bool passwordFieldVisibility;
  String? Function(BuildContext, String?)? passwordFieldTextControllerValidator;
  String? _passwordFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es requerido';
    }

    return null;
  }

  // State field(s) for passwordField2 widget.
  FocusNode? passwordField2FocusNode;
  TextEditingController? passwordField2TextController;
  late bool passwordField2Visibility;
  String? Function(BuildContext, String?)?
      passwordField2TextControllerValidator;
  String? _passwordField2TextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es requerido';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    nombreFieldTextControllerValidator = _nombreFieldTextControllerValidator;
    correoFieldTextControllerValidator = _correoFieldTextControllerValidator;
    passwordFieldVisibility = false;
    passwordFieldTextControllerValidator =
        _passwordFieldTextControllerValidator;
    passwordField2Visibility = false;
    passwordField2TextControllerValidator =
        _passwordField2TextControllerValidator;
  }

  @override
  void dispose() {
    nombreFieldFocusNode?.dispose();
    nombreFieldTextController?.dispose();

    correoFieldFocusNode?.dispose();
    correoFieldTextController?.dispose();

    passwordFieldFocusNode?.dispose();
    passwordFieldTextController?.dispose();

    passwordField2FocusNode?.dispose();
    passwordField2TextController?.dispose();
  }
}
