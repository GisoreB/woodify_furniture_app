import '/all_comoponet/app_bar/app_bar_widget.dart';
import '/all_comoponet/my_order_empty/my_order_empty_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'my_order_page_widget.dart' show MyOrderPageWidget;
import 'package:flutter/material.dart';

class MyOrderPageModel extends FlutterFlowModel<MyOrderPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AppBar component.
  late AppBarModel appBarModel;
  // Model for MyOrderEmpty component.
  late MyOrderEmptyModel myOrderEmptyModel;

  @override
  void initState(BuildContext context) {
    appBarModel = createModel(context, () => AppBarModel());
    myOrderEmptyModel = createModel(context, () => MyOrderEmptyModel());
  }

  @override
  void dispose() {
    appBarModel.dispose();
    myOrderEmptyModel.dispose();
  }
}
