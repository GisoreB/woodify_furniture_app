import '/all_comoponet/app_bar/app_bar_widget.dart';
import '/all_comoponet/product_component/product_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tranding_products_page_widget.dart' show TrandingProductsPageWidget;
import 'package:flutter/material.dart';

class TrandingProductsPageModel
    extends FlutterFlowModel<TrandingProductsPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AppBar component.
  late AppBarModel appBarModel;
  // Models for ProductComponent dynamic component.
  late FlutterFlowDynamicModels<ProductComponentModel> productComponentModels;

  @override
  void initState(BuildContext context) {
    appBarModel = createModel(context, () => AppBarModel());
    productComponentModels =
        FlutterFlowDynamicModels(() => ProductComponentModel());
  }

  @override
  void dispose() {
    appBarModel.dispose();
    productComponentModels.dispose();
  }
}
