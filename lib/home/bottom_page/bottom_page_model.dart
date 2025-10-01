import '/all_comoponet/chat_comopnet/chat_comopnet_widget.dart';
import '/all_comoponet/fav_componet/fav_componet_widget.dart';
import '/all_comoponet/home_componet/home_componet_widget.dart';
import '/all_comoponet/profile_componet/profile_componet_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'bottom_page_widget.dart' show BottomPageWidget;
import 'package:flutter/material.dart';

class BottomPageModel extends FlutterFlowModel<BottomPageWidget> {
  ///  Local state fields for this page.

  int? bottomadd = 0;

  ///  State fields for stateful widgets in this page.

  // Model for HomeComponet component.
  late HomeComponetModel homeComponetModel;
  // Model for FavComponet component.
  late FavComponetModel favComponetModel;
  // Model for ChatComopnet component.
  late ChatComopnetModel chatComopnetModel;
  // Model for ProfileComponet component.
  late ProfileComponetModel profileComponetModel;

  @override
  void initState(BuildContext context) {
    homeComponetModel = createModel(context, () => HomeComponetModel());
    favComponetModel = createModel(context, () => FavComponetModel());
    chatComopnetModel = createModel(context, () => ChatComopnetModel());
    profileComponetModel = createModel(context, () => ProfileComponetModel());
  }

  @override
  void dispose() {
    homeComponetModel.dispose();
    favComponetModel.dispose();
    chatComopnetModel.dispose();
    profileComponetModel.dispose();
  }
}
