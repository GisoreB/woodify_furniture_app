import '/all_comoponet/app_bar/app_bar_widget.dart';
import '/all_comoponet/product_component/product_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'search_result_page_widget.dart' show SearchResultPageWidget;
import 'package:flutter/material.dart';

class SearchResultPageModel extends FlutterFlowModel<SearchResultPageWidget> {
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
