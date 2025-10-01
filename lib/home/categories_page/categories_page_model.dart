import '/all_comoponet/app_bar/app_bar_widget.dart';
import '/all_comoponet/categories/categories_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'categories_page_widget.dart' show CategoriesPageWidget;
import 'package:flutter/material.dart';

class CategoriesPageModel extends FlutterFlowModel<CategoriesPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AppBar component.
  late AppBarModel appBarModel;
  // Models for Categories dynamic component.
  late FlutterFlowDynamicModels<CategoriesModel> categoriesModels;

  @override
  void initState(BuildContext context) {
    appBarModel = createModel(context, () => AppBarModel());
    categoriesModels = FlutterFlowDynamicModels(() => CategoriesModel());
  }

  @override
  void dispose() {
    appBarModel.dispose();
    categoriesModels.dispose();
  }
}
