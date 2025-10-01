import '/all_comoponet/app_bar/app_bar_widget.dart';
import '/all_comoponet/empty_data/empty_data_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'search_page_widget.dart' show SearchPageWidget;
import 'package:flutter/material.dart';

class SearchPageModel extends FlutterFlowModel<SearchPageWidget> {
  ///  Local state fields for this page.

  bool focus = false;

  ///  State fields for stateful widgets in this page.

  // Model for AppBar component.
  late AppBarModel appBarModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for EmptyData component.
  late EmptyDataModel emptyDataModel;

  @override
  void initState(BuildContext context) {
    appBarModel = createModel(context, () => AppBarModel());
    emptyDataModel = createModel(context, () => EmptyDataModel());
  }

  @override
  void dispose() {
    appBarModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    emptyDataModel.dispose();
  }
}
