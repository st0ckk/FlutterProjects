import '/components/product_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'products_widget.dart' show ProductsWidget;
import 'package:flutter/material.dart';

class ProductsModel extends FlutterFlowModel<ProductsWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for productCard dynamic component.
  late FlutterFlowDynamicModels<ProductCardModel> productCardModels;

  @override
  void initState(BuildContext context) {
    productCardModels = FlutterFlowDynamicModels(() => ProductCardModel());
  }

  @override
  void dispose() {
    productCardModels.dispose();
  }
}
