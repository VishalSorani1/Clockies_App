import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_drawer_component/custom_drawer_component_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'project_screen_widget.dart' show ProjectScreenWidget;
import 'package:flutter/material.dart';

class ProjectScreenModel extends FlutterFlowModel<ProjectScreenWidget> {
  ///  Local state fields for this page.

  bool isLoading = false;

  List<ProjectModelStruct> allProjectList = [];
  void addToAllProjectList(ProjectModelStruct item) => allProjectList.add(item);
  void removeFromAllProjectList(ProjectModelStruct item) =>
      allProjectList.remove(item);
  void removeAtIndexFromAllProjectList(int index) =>
      allProjectList.removeAt(index);
  void insertAtIndexInAllProjectList(int index, ProjectModelStruct item) =>
      allProjectList.insert(index, item);
  void updateAllProjectListAtIndex(
          int index, Function(ProjectModelStruct) updateFn) =>
      allProjectList[index] = updateFn(allProjectList[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<ProjectModelStruct>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<ProjectModelStruct>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController3 =
      FlutterFlowDataTableController<ProjectModelStruct>();
  // Model for customDrawerComponent component.
  late CustomDrawerComponentModel customDrawerComponentModel;

  @override
  void initState(BuildContext context) {
    customDrawerComponentModel =
        createModel(context, () => CustomDrawerComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    customDrawerComponentModel.dispose();
  }

  /// Action blocks.
  Future fetchProject(
    BuildContext context, {
    required String? status,
  }) async {
    ApiCallResponse? fetchProjectApiResult;

    fetchProjectApiResult = await FetchProjectsCall.call(
      authToken: FFAppState().userToken,
      pageNumber: 0,
      pageSize: 1000,
      status: status,
    );

    if ((fetchProjectApiResult.succeeded ?? true)) {
      allProjectList = FetchProjectsCall.projectList(
        (fetchProjectApiResult.jsonBody ?? ''),
      )!
          .map((e) => ProjectModelStruct.maybeFromMap(e))
          .withoutNulls
          .toList()
          .toList()
          .cast<ProjectModelStruct>();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            getJsonField(
              (fetchProjectApiResult.jsonBody ?? ''),
              r'''$.message''',
            ).toString().toString(),
            style: TextStyle(
              color: FlutterFlowTheme.of(context).primaryText,
            ),
          ),
          duration: const Duration(milliseconds: 4000),
          backgroundColor: FlutterFlowTheme.of(context).error1,
        ),
      );
    }
  }
}
