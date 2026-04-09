import '/backend/backend.dart';
import '/components/product_card/product_card_widget.dart';
import '/components/producto_create/producto_create_widget.dart';
import '/components/producto_edit/producto_edit_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'products_model.dart';
export 'products_model.dart';

/// Create a products page for a French pastry app called Postres Franceses.
///
/// Show a 2 column grid of product cards. Each card should display a product
/// image, product name, category name, SKU, quantity, price, discount, and
/// a Buy button in pink. Include a back arrow in the top left. Use pink and
/// white as the main colors. The page receives a category reference as a
/// parameter to filter products.
class ProductsWidget extends StatefulWidget {
  const ProductsWidget({
    super.key,
    this.category,
    required this.categoryName,
  });

  final DocumentReference? category;
  final String? categoryName;

  static String routeName = 'products';
  static String routePath = '/products';

  @override
  State<ProductsWidget> createState() => _ProductsWidgetState();
}

class _ProductsWidgetState extends State<ProductsWidget> {
  late ProductsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFFFF5F7),
        appBar: AppBar(
          backgroundColor: Color(0xFFFFF5F7),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Color(0xFFC2185B),
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                valueOrDefault<String>(
                  widget.categoryName,
                  'Categoria',
                ),
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      font: GoogleFonts.interTight(
                        fontWeight: FontWeight.bold,
                        fontStyle: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .fontStyle,
                      ),
                      color: Color(0xFFE91E8C),
                      fontSize: 20.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                      fontStyle:
                          FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                    ),
              ),
              FlutterFlowIconButton(
                borderRadius: 8.0,
                buttonSize: 48.46,
                icon: Icon(
                  Icons.add,
                  color: Color(0xFFC2185B),
                  size: 30.0,
                ),
                onPressed: () async {
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    enableDrag: false,
                    context: context,
                    builder: (context) {
                      return GestureDetector(
                        onTap: () {
                          FocusScope.of(context).unfocus();
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        child: Padding(
                          padding: MediaQuery.viewInsetsOf(context),
                          child: ProductoCreateWidget(
                            defaultCategoryName: widget.categoryName,
                            categoryRef: widget.category!,
                          ),
                        ),
                      );
                    },
                  ).then((value) => safeSetState(() {}));
                },
              ),
            ],
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Opacity(
                opacity: 0.2,
                child: Container(
                  width: double.infinity,
                  height: 1.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFE91E8C),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                  child: StreamBuilder<List<ProductsRecord>>(
                    stream: queryProductsRecord(
                      queryBuilder: (productsRecord) => productsRecord.where(
                        'category',
                        isEqualTo: widget.category,
                      ),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<ProductsRecord> staggeredViewProductsRecordList =
                          snapshot.data!;

                      return MasonryGridView.builder(
                        gridDelegate:
                            SliverSimpleGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                        itemCount: staggeredViewProductsRecordList.length,
                        itemBuilder: (context, staggeredViewIndex) {
                          final staggeredViewProductsRecord =
                              staggeredViewProductsRecordList[
                                  staggeredViewIndex];
                          return Stack(
                            children: [
                              ProductCardWidget(
                                key: Key(
                                    'Key3u5_${staggeredViewIndex}_of_${staggeredViewProductsRecordList.length}'),
                                productDoc: staggeredViewProductsRecord,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    6.0, 6.0, 0.0, 0.0),
                                child: FlutterFlowIconButton(
                                  borderRadius: 100.0,
                                  buttonSize: 40.0,
                                  fillColor: Color(0xFFFFC1DF),
                                  icon: Icon(
                                    Icons.edit,
                                    color: Color(0xFFC2185B),
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      enableDrag: false,
                                      context: context,
                                      builder: (context) {
                                        return GestureDetector(
                                          onTap: () {
                                            FocusScope.of(context).unfocus();
                                            FocusManager.instance.primaryFocus
                                                ?.unfocus();
                                          },
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: ProductoEditWidget(
                                              productDoc:
                                                  staggeredViewProductsRecord,
                                              categoryRef:
                                                  staggeredViewProductsRecord
                                                      .category!,
                                              defaultCategoryName:
                                                  widget.categoryName,
                                            ),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  },
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
