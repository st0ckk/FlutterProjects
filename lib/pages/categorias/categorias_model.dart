import '/components/category_card/category_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'categorias_widget.dart' show CategoriasWidget;
import 'package:flutter/material.dart';

class CategoriasModel extends FlutterFlowModel<CategoriasWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for categoryCard dynamic component.
  late FlutterFlowDynamicModels<CategoryCardModel> categoryCardModels;

  @override
  void initState(BuildContext context) {
    categoryCardModels = FlutterFlowDynamicModels(() => CategoryCardModel());
  }

  @override
  void dispose() {
    categoryCardModels.dispose();
  }
}
