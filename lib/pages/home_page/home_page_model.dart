import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_drawer_component/custom_drawer_component_widget.dart';
import '/components/dashboard_time_line_component/dashboard_time_line_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  List<DashboardModelStruct> userDataList = [];
  void addToUserDataList(DashboardModelStruct item) => userDataList.add(item);
  void removeFromUserDataList(DashboardModelStruct item) =>
      userDataList.remove(item);
  void removeAtIndexFromUserDataList(int index) => userDataList.removeAt(index);
  void insertAtIndexInUserDataList(int index, DashboardModelStruct item) =>
      userDataList.insert(index, item);
  void updateUserDataListAtIndex(
          int index, Function(DashboardModelStruct) updateFn) =>
      userDataList[index] = updateFn(userDataList[index]);

  bool isLoading = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for employeesDropDown widget.
  String? employeesDropDownValue;
  FormFieldController<String>? employeesDropDownValueController;
  // Model for dashboardTimeLineComponent component.
  late DashboardTimeLineComponentModel dashboardTimeLineComponentModel;
  // Model for customDrawerComponent component.
  late CustomDrawerComponentModel customDrawerComponentModel;

  @override
  void initState(BuildContext context) {
    dashboardTimeLineComponentModel =
        createModel(context, () => DashboardTimeLineComponentModel());
    customDrawerComponentModel =
        createModel(context, () => CustomDrawerComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    dashboardTimeLineComponentModel.dispose();
    customDrawerComponentModel.dispose();
  }

  /// Action blocks.
  Future dashboardAPI(BuildContext context) async {
    ApiCallResponse? dashboardApiResult;

    dashboardApiResult = await DashboardAPICall.call(
      authToken: FFAppState().userToken,
    );

    if ((dashboardApiResult.succeeded ?? true)) {
      userDataList = DashboardAPICall.userDataList(
        (dashboardApiResult.jsonBody ?? ''),
      )!
          .map((e) => DashboardModelStruct.maybeFromMap(e))
          .withoutNulls
          .toList()
          .toList()
          .cast<DashboardModelStruct>();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'error',
            style: TextStyle(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              fontSize: 14.0,
            ),
          ),
          duration: const Duration(milliseconds: 4000),
          backgroundColor: FlutterFlowTheme.of(context).error,
        ),
      );
    }
  }
}
