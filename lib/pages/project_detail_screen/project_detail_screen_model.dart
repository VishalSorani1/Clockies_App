import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'project_detail_screen_widget.dart' show ProjectDetailScreenWidget;
import 'package:flutter/material.dart';

class ProjectDetailScreenModel
    extends FlutterFlowModel<ProjectDetailScreenWidget> {
  ///  Local state fields for this page.

  bool isLoading = false;

  bool hasProjectEditRole = false;

  ProjectModelStruct? projectDetail;
  void updateProjectDetailStruct(Function(ProjectModelStruct) updateFn) {
    updateFn(projectDetail ??= ProjectModelStruct());
  }

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for descriptionTextField widget.
  FocusNode? descriptionTextFieldFocusNode;
  TextEditingController? descriptionTextFieldTextController;
  String? Function(BuildContext, String?)?
      descriptionTextFieldTextControllerValidator;
  // State field(s) for ClientDropDown widget.
  String? clientDropDownValue;
  FormFieldController<String>? clientDropDownValueController;
  // State field(s) for StatusDropDown widget.
  String? statusDropDownValue;
  FormFieldController<String>? statusDropDownValueController;
  // State field(s) for TotalHourseTextField widget.
  FocusNode? totalHourseTextFieldFocusNode;
  TextEditingController? totalHourseTextFieldTextController;
  String? Function(BuildContext, String?)?
      totalHourseTextFieldTextControllerValidator;
  // State field(s) for excessHours widget.
  bool? excessHoursValue;
  // State field(s) for taskEntry widget.
  bool? taskEntryValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    descriptionTextFieldFocusNode?.dispose();
    descriptionTextFieldTextController?.dispose();

    totalHourseTextFieldFocusNode?.dispose();
    totalHourseTextFieldTextController?.dispose();
  }

  /// Action blocks.
  Future fetchProject(BuildContext context) async {
    ApiCallResponse? fetchProjectApiResult;

    fetchProjectApiResult = await FetchProjectsCall.call(
      authToken: FFAppState().userToken,
      search: 'cloc',
    );

    if ((fetchProjectApiResult.succeeded ?? true)) {
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

  Future updateProjectDetail(BuildContext context) async {
    ApiCallResponse? updateProjectApiResult;

    updateProjectApiResult = await UpdateProjectDetailCall.call(
      authToken: FFAppState().userToken,
      id: widget.id,
      projectName: projectDetail?.projectName,
      clientId: FFAppState()
          .clientData
          .where((e) => e.clientName == clientDropDownValue)
          .toList()
          .first
          .id,
      totalHrs: int.tryParse(totalHourseTextFieldTextController.text),
      status: statusDropDownValue,
      description: descriptionTextFieldTextController.text,
      allowOverSpent: excessHoursValue,
      allowManualTask: taskEntryValue,
    );

    if ((updateProjectApiResult.succeeded ?? true)) {
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'updated',
            style: TextStyle(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
          ),
          duration: const Duration(milliseconds: 4000),
          backgroundColor: FlutterFlowTheme.of(context).secondary,
        ),
      );
    } else {
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            getJsonField(
              (updateProjectApiResult.jsonBody ?? ''),
              r'''$.message''',
            ).toString().toString(),
            style: TextStyle(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
          ),
          duration: const Duration(milliseconds: 4000),
          backgroundColor: FlutterFlowTheme.of(context).error1,
        ),
      );
    }
  }

  Future deleteProject(BuildContext context) async {
    ApiCallResponse? deleteProjectApiResult;

    deleteProjectApiResult = await DeleteProjectCall.call(
      authToken: FFAppState().userToken,
      id: widget.id,
    );

    if ((deleteProjectApiResult.succeeded ?? true)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            getJsonField(
              (deleteProjectApiResult.jsonBody ?? ''),
              r'''$.message''',
            ).toString().toString(),
            style: TextStyle(
              color: FlutterFlowTheme.of(context).primaryText,
            ),
          ),
          duration: const Duration(milliseconds: 4000),
          backgroundColor: FlutterFlowTheme.of(context).success1,
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            getJsonField(
              (deleteProjectApiResult.jsonBody ?? ''),
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

  Future fetchProjectById(BuildContext context) async {
    ApiCallResponse? fetchProjectByIdResult;

    fetchProjectByIdResult = await FetchProjectByIDCall.call(
      authToken: FFAppState().userToken,
      id: widget.id,
    );

    if ((fetchProjectByIdResult.succeeded ?? true)) {
      projectDetail =
          ProjectModelStruct.maybeFromMap(FetchProjectByIDCall.projectDetail(
        (fetchProjectByIdResult.jsonBody ?? ''),
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            getJsonField(
              (fetchProjectByIdResult.jsonBody ?? ''),
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
      context.safePop();
      return;
    }
  }
}
