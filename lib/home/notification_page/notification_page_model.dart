import '/all_comoponet/app_bar/app_bar_widget.dart';
import '/all_comoponet/notification_empty/notification_empty_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'notification_page_widget.dart' show NotificationPageWidget;
import 'package:flutter/material.dart';

class NotificationPageModel extends FlutterFlowModel<NotificationPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AppBar component.
  late AppBarModel appBarModel;
  // Model for NotificationEmpty component.
  late NotificationEmptyModel notificationEmptyModel;

  @override
  void initState(BuildContext context) {
    appBarModel = createModel(context, () => AppBarModel());
    notificationEmptyModel =
        createModel(context, () => NotificationEmptyModel());
  }

  @override
  void dispose() {
    appBarModel.dispose();
    notificationEmptyModel.dispose();
  }
}
