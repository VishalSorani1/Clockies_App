import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'project_detail_screen_model.dart';
export 'project_detail_screen_model.dart';

class ProjectDetailScreenWidget extends StatefulWidget {
  const ProjectDetailScreenWidget({
    super.key,
    required this.id,
  });

  final int? id;

  @override
  State<ProjectDetailScreenWidget> createState() =>
      _ProjectDetailScreenWidgetState();
}

class _ProjectDetailScreenWidgetState extends State<ProjectDetailScreenWidget> {
  late ProjectDetailScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProjectDetailScreenModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.isLoading = true;
      setState(() {});
      await _model.fetchProjectById(context);
      setState(() {});
      await Future.wait([
        Future(() async {
          setState(() {
            _model.descriptionTextFieldTextController?.text =
                _model.projectDetail!.description;
            _model.descriptionTextFieldTextController?.selection =
                TextSelection.collapsed(
                    offset:
                        _model.descriptionTextFieldTextController!.text.length);
          });
        }),
        Future(() async {
          setState(() {
            _model.totalHourseTextFieldTextController?.text =
                _model.projectDetail!.totalHrs.toString();
            _model.totalHourseTextFieldTextController?.selection =
                TextSelection.collapsed(
                    offset:
                        _model.totalHourseTextFieldTextController!.text.length);
          });
        }),
        Future(() async {
          setState(() {
            _model.clientDropDownValueController?.value =
                _model.projectDetail!.clients.clientName;
          });
        }),
        Future(() async {
          setState(() {
            _model.statusDropDownValueController?.value =
                _model.projectDetail!.status;
          });
        }),
      ]);
      _model.isLoading = false;
      setState(() {});
      if (FFAppState().user.userRoleId == 1) {
        _model.hasProjectEditRole = true;
        setState(() {});
      } else {
        _model.hasProjectEditRole = false;
        setState(() {});
      }
    });

    _model.descriptionTextFieldTextController ??=
        TextEditingController(text: _model.projectDetail?.description);
    _model.descriptionTextFieldFocusNode ??= FocusNode();

    _model.totalHourseTextFieldTextController ??= TextEditingController();
    _model.totalHourseTextFieldFocusNode ??= FocusNode();
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
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).backgroundColor,
        appBar: !_model.isLoading
            ? AppBar(
                backgroundColor: FlutterFlowTheme.of(context).backgroundColor,
                automaticallyImplyLeading: false,
                leading: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 60.0,
                  icon: Icon(
                    Icons.arrow_back_rounded,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 30.0,
                  ),
                  onPressed: () async {
                    context.safePop();
                  },
                ),
                title: Text(
                  valueOrDefault<String>(
                    _model.projectDetail?.projectName,
                    '-',
                  ),
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                ),
                actions: const [],
                centerTitle: true,
                elevation: 0.0,
              )
            : null,
        body: SafeArea(
          top: true,
          child: Builder(
            builder: (context) {
              if (!_model.isLoading) {
                return Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 20.0, 12.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Project Description',
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Jost',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: TextFormField(
                                controller:
                                    _model.descriptionTextFieldTextController,
                                focusNode: _model.descriptionTextFieldFocusNode,
                                onFieldSubmitted: (_) async {
                                  await _model.updateProjectDetail(context);
                                  setState(() {});
                                },
                                autofocus: false,
                                textCapitalization: TextCapitalization.none,
                                textInputAction: TextInputAction.done,
                                readOnly: !_model.hasProjectEditRole,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        color: FlutterFlowTheme.of(context)
                                            .textGreyColor,
                                        letterSpacing: 0.0,
                                      ),
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        letterSpacing: 0.0,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  filled: true,
                                  fillColor: (_model
                                              .descriptionTextFieldFocusNode
                                              ?.hasFocus ??
                                          false)
                                      ? FlutterFlowTheme.of(context)
                                          .secondaryBackground
                                      : const Color(0x00000000),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Jost',
                                      color: FlutterFlowTheme.of(context)
                                          .textGreyColor,
                                      letterSpacing: 0.0,
                                    ),
                                maxLines: null,
                                validator: _model
                                    .descriptionTextFieldTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ].divide(const SizedBox(height: 8.0)),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'More Details',
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Jost',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12.0, 12.0, 12.0, 12.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              'Client:',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleMedium
                                                  .override(
                                                    fontFamily: 'Jost',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .textGreyColor,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ),
                                          Expanded(
                                            child: FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .clientDropDownValueController ??=
                                                  FormFieldController<String>(
                                                      null),
                                              options: FFAppState()
                                                  .clientData
                                                  .map((e) => e.clientName)
                                                  .toList(),
                                              onChanged: (val) async {
                                                setState(() => _model
                                                    .clientDropDownValue = val);
                                                await Future.delayed(
                                                    const Duration(
                                                        milliseconds: 100));
                                                await _model
                                                    .updateProjectDetail(
                                                        context);
                                                setState(() {});
                                              },
                                              width: 300.0,
                                              height: 48.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .override(
                                                        fontFamily: 'Jost',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .textGreyColor,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .textGreyColor,
                                                size: 20.0,
                                              ),
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              elevation: 2.0,
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .blueColor,
                                              borderWidth: 1.0,
                                              borderRadius: 8.0,
                                              margin: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 6.0),
                                              hidesUnderline: true,
                                              disabled:
                                                  !_model.hasProjectEditRole,
                                              isOverButton: true,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              'Status',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleMedium
                                                  .override(
                                                    fontFamily: 'Jost',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .textGreyColor,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ),
                                          Expanded(
                                            child: FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .statusDropDownValueController ??=
                                                  FormFieldController<String>(
                                                      null),
                                              options: Status.values
                                                  .map((e) => e.name)
                                                  .toList(),
                                              onChanged: (val) async {
                                                setState(() => _model
                                                    .statusDropDownValue = val);
                                                await Future.delayed(
                                                    const Duration(
                                                        milliseconds: 100));
                                                await _model
                                                    .updateProjectDetail(
                                                        context);
                                                setState(() {});
                                              },
                                              width: 300.0,
                                              height: 48.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .override(
                                                        fontFamily: 'Jost',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .textGreyColor,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .textGreyColor,
                                                size: 20.0,
                                              ),
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              elevation: 2.0,
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .blueColor,
                                              borderWidth: 1.0,
                                              borderRadius: 8.0,
                                              margin: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 6.0),
                                              hidesUnderline: true,
                                              disabled:
                                                  !_model.hasProjectEditRole,
                                              isOverButton: true,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              'Budget Hours',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleMedium
                                                  .override(
                                                    fontFamily: 'Jost',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .textGreyColor,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ),
                                          Expanded(
                                            child: TextFormField(
                                              controller: _model
                                                  .totalHourseTextFieldTextController,
                                              focusNode: _model
                                                  .totalHourseTextFieldFocusNode,
                                              onFieldSubmitted: (_) async {
                                                await Future.delayed(
                                                    const Duration(
                                                        milliseconds: 100));
                                                await _model
                                                    .updateProjectDetail(
                                                        context);
                                                setState(() {});
                                              },
                                              autofocus: false,
                                              textInputAction:
                                                  TextInputAction.done,
                                              readOnly:
                                                  !_model.hasProjectEditRole,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .textGreyColor,
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Jost',
                                                          letterSpacing: 0.0,
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .blueColor,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .textGreyColor,
                                                        letterSpacing: 0.0,
                                                        lineHeight: 1.0,
                                                      ),
                                              keyboardType:
                                                  TextInputType.number,
                                              validator: _model
                                                  .totalHourseTextFieldTextControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: Theme(
                                              data: ThemeData(
                                                checkboxTheme:
                                                    const CheckboxThemeData(
                                                  visualDensity:
                                                      VisualDensity.compact,
                                                  materialTapTargetSize:
                                                      MaterialTapTargetSize
                                                          .shrinkWrap,
                                                ),
                                                unselectedWidgetColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                              ),
                                              child: CheckboxListTile(
                                                value:
                                                    _model.excessHoursValue ??=
                                                        _model.projectDetail!
                                                            .allowOverSpent,
                                                onChanged:
                                                    !_model.hasProjectEditRole
                                                        ? null
                                                        : (newValue) async {
                                                            setState(() => _model
                                                                    .excessHoursValue =
                                                                newValue!);
                                                            if (newValue!) {
                                                              await Future.delayed(
                                                                  const Duration(
                                                                      milliseconds:
                                                                          100));
                                                              await _model
                                                                  .updateProjectDetail(
                                                                      context);
                                                              setState(() {});
                                                            } else {
                                                              await Future.delayed(
                                                                  const Duration(
                                                                      milliseconds:
                                                                          100));
                                                              await _model
                                                                  .updateProjectDetail(
                                                                      context);
                                                              setState(() {});
                                                            }
                                                          },
                                                title: Text(
                                                  'Allow Excess Hours',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleMedium
                                                      .override(
                                                        fontFamily: 'Jost',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .textGreyColor,
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                                tileColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                activeColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                checkColor:
                                                    !_model.hasProjectEditRole
                                                        ? null
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .info,
                                                dense: true,
                                                controlAffinity:
                                                    ListTileControlAffinity
                                                        .leading,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Expanded(
                                            child: Theme(
                                              data: ThemeData(
                                                checkboxTheme:
                                                    const CheckboxThemeData(
                                                  visualDensity:
                                                      VisualDensity.compact,
                                                  materialTapTargetSize:
                                                      MaterialTapTargetSize
                                                          .shrinkWrap,
                                                ),
                                                unselectedWidgetColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                              ),
                                              child: CheckboxListTile(
                                                value: _model.taskEntryValue ??=
                                                    _model.projectDetail!
                                                        .allowManualTask,
                                                onChanged:
                                                    !_model.hasProjectEditRole
                                                        ? null
                                                        : (newValue) async {
                                                            setState(() => _model
                                                                    .taskEntryValue =
                                                                newValue!);
                                                            if (newValue!) {
                                                              await Future.delayed(
                                                                  const Duration(
                                                                      milliseconds:
                                                                          100));
                                                              await _model
                                                                  .updateProjectDetail(
                                                                      context);
                                                              setState(() {});
                                                            } else {
                                                              await Future.delayed(
                                                                  const Duration(
                                                                      milliseconds:
                                                                          100));
                                                              await _model
                                                                  .updateProjectDetail(
                                                                      context);
                                                              setState(() {});
                                                            }
                                                          },
                                                title: Text(
                                                  'Allow Manual Task Entry',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleMedium
                                                      .override(
                                                        fontFamily: 'Jost',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .textGreyColor,
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                                tileColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                activeColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                checkColor:
                                                    !_model.hasProjectEditRole
                                                        ? null
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .info,
                                                dense: true,
                                                controlAffinity:
                                                    ListTileControlAffinity
                                                        .leading,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ].divide(const SizedBox(height: 8.0)),
                        ),
                        if (FFAppState().user.userRoleId == 1)
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 14.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  var confirmDialogResponse =
                                      await showDialog<bool>(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title: const Text(
                                                    'Are you sure you want to delete this?'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext,
                                                            false),
                                                    child: const Text('Cancel'),
                                                  ),
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext,
                                                            true),
                                                    child: const Text('Delete'),
                                                  ),
                                                ],
                                              );
                                            },
                                          ) ??
                                          false;
                                  if (confirmDialogResponse) {
                                    await _model.deleteProject(context);
                                  } else {
                                    return;
                                  }

                                  context.safePop();
                                },
                                text: 'Delete Project',
                                icon: const Icon(
                                  Icons.delete_rounded,
                                  size: 22.0,
                                ),
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: const Color(0xFFFF5E5E),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Jost',
                                        color: Colors.white,
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 0.0,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                          ),
                      ].divide(const SizedBox(height: 12.0)),
                    ),
                  ),
                );
              } else {
                return Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Lottie.asset(
                    'assets/lottie_animations/Animation_-_1718873537938.json',
                    width: 150.0,
                    height: 130.0,
                    fit: BoxFit.cover,
                    animate: true,
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
