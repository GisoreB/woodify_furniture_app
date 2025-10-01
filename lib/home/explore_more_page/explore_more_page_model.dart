import '/all_comoponet/app_bar/app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'explore_more_page_widget.dart' show ExploreMorePageWidget;
import 'package:flutter/material.dart';

class ExploreMorePageModel extends FlutterFlowModel<ExploreMorePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AppBar component.
  late AppBarModel appBarModel;

  @override
  void initState(BuildContext context) {
    appBarModel = createModel(context, () => AppBarModel());
  }

  @override
  void dispose() {
    appBarModel.dispose();
  }
}
