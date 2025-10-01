import '/all_comoponet/app_bar/app_bar_widget.dart';
import '/all_comoponet/product_component/product_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'table_page_model.dart';
export 'table_page_model.dart';

class TablePageWidget extends StatefulWidget {
  const TablePageWidget({
    super.key,
    required this.name,
  });

  final String? name;

  static String routeName = 'TablePage';
  static String routePath = '/tablePage';

  @override
  State<TablePageWidget> createState() => _TablePageWidgetState();
}

class _TablePageWidgetState extends State<TablePageWidget> {
  late TablePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TablePageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.appBarModel,
                updateCallback: () => safeSetState(() {}),
                child: AppBarWidget(
                  name: widget.name!,
                ),
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.fromLTRB(
                    0,
                    16.0,
                    0,
                    24.0,
                  ),
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                      child: Builder(
                        builder: (context) {
                          final tableData =
                              FFAppState().searchResultList.toList();

                          return Wrap(
                            spacing: 16.0,
                            runSpacing: 16.0,
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: List.generate(tableData.length,
                                (tableDataIndex) {
                              final tableDataItem = tableData[tableDataIndex];
                              return Container(
                                width: () {
                                  if (MediaQuery.sizeOf(context).width <
                                      810.0) {
                                    return ((MediaQuery.sizeOf(context).width -
                                            56) *
                                        1 /
                                        2);
                                  } else if ((MediaQuery.sizeOf(context)
                                              .width <=
                                          810.0) &&
                                      (MediaQuery.sizeOf(context).width >=
                                          1280.0)) {
                                    return ((MediaQuery.sizeOf(context).width -
                                            88) *
                                        1 /
                                        4);
                                  } else {
                                    return ((MediaQuery.sizeOf(context).width -
                                            152) *
                                        1 /
                                        8);
                                  }
                                }(),
                                height: 227.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: wrapWithModel(
                                  model: _model.productComponentModels.getModel(
                                    tableDataIndex.toString(),
                                    tableDataIndex,
                                  ),
                                  updateCallback: () => safeSetState(() {}),
                                  child: ProductComponentWidget(
                                    key: Key(
                                      'Keytme_${tableDataIndex.toString()}',
                                    ),
                                    data: tableDataItem,
                                  ),
                                ),
                              );
                            }),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
