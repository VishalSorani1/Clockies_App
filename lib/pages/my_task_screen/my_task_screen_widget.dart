import '/components/custom_drawer_component/custom_drawer_component_widget.dart';
import '/components/task_tile/task_tile_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'my_task_screen_model.dart';
export 'my_task_screen_model.dart';

class MyTaskScreenWidget extends StatefulWidget {
  const MyTaskScreenWidget({super.key});

  @override
  State<MyTaskScreenWidget> createState() => _MyTaskScreenWidgetState();
}

class _MyTaskScreenWidgetState extends State<MyTaskScreenWidget> {
  late MyTaskScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyTaskScreenModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.isLoading = true;
      setState(() {});
      await _model.fetchMyTask(context);
      setState(() {});
      _model.isLoading = false;
      setState(() {});
      await Future.wait([
        Future(() async {
          await action_blocks.fetchSections(
            context,
            id: _model.myTaskList
                .where((e) =>
                    e.projects.projectName == _model.projectListDropDownValue)
                .toList()
                .first
                .projectId,
          );
          setState(() {});
        }),
        Future(() async {
          await action_blocks.fetchProjectById(
            context,
            id: _model.myTaskList
                .where((e) =>
                    e.projects.projectName == _model.projectListDropDownValue)
                .toList()
                .first
                .projectId,
          );
          setState(() {});
        }),
      ]);
    });
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
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            if ((_model.myTaskList
                        .where((e) =>
                            e.projects.projectName ==
                            _model.projectListDropDownValue)
                        .toList()
                        .first
                        .projects
                        .allowManualTask ==
                    true) ||
                (FFAppState().user.userRoleId == 1)) {
              context.pushNamed(
                'AddTaskScreen',
                queryParameters: {
                  'id': serializeParam(
                    _model.myTaskList
                        .where((e) =>
                            e.projects.projectName ==
                            _model.projectListDropDownValue)
                        .toList()
                        .first
                        .projects
                        .id,
                    ParamType.int,
                  ),
                  'projectName': serializeParam(
                    _model.myTaskList
                        .where((e) =>
                            e.projects.projectName ==
                            _model.projectListDropDownValue)
                        .toList()
                        .first
                        .projects
                        .projectName,
                    ParamType.String,
                  ),
                  'isEdit': serializeParam(
                    false,
                    ParamType.bool,
                  ),
                }.withoutNulls,
              );

              await _model.fetchMyTask(context);
              setState(() {});
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    'You are not allow to enter manual task',
                    style: TextStyle(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                  ),
                  duration: const Duration(milliseconds: 4000),
                  backgroundColor: FlutterFlowTheme.of(context).error1,
                ),
              );
            }
          },
          backgroundColor: FlutterFlowTheme.of(context).pinkColor,
          elevation: 8.0,
          child: Icon(
            Icons.add,
            color: FlutterFlowTheme.of(context).info,
            size: 24.0,
          ),
        ),
        drawer: Drawer(
          elevation: 16.0,
          child: wrapWithModel(
            model: _model.customDrawerComponentModel,
            updateCallback: () => setState(() {}),
            child: const CustomDrawerComponentWidget(),
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).backgroundColor,
          automaticallyImplyLeading: false,
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              scaffoldKey.currentState!.openDrawer();
            },
            child: Icon(
              Icons.menu,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 24.0,
            ),
          ),
          title: Text(
            FFAppConstants.myTask,
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  fontFamily: 'Inter',
                  color: FlutterFlowTheme.of(context).primaryText,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Builder(
            builder: (context) {
              if (!_model.isLoading) {
                return Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 6.0, 20.0, 6.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Expanded(
                                child: Text(
                                  FFAppConstants.projectName,
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                              if (_model.myTaskList.isNotEmpty)
                                Expanded(
                                  child: FlutterFlowDropDown<String>(
                                    controller: _model
                                            .projectListDropDownValueController ??=
                                        FormFieldController<String>(
                                      _model.projectListDropDownValue ??= _model
                                          .myTaskList
                                          .unique((e) => e.projects.projectName)
                                          .first
                                          .projects
                                          .projectName,
                                    ),
                                    options: _model.myTaskList
                                        .unique((e) => e.projects.projectName)
                                        .map((e) => e.projects.projectName)
                                        .toList(),
                                    onChanged: (val) async {
                                      setState(() => _model
                                          .projectListDropDownValue = val);
                                      await Future.wait([
                                        Future(() async {
                                          await action_blocks.fetchSections(
                                            context,
                                            id: _model.myTaskList
                                                .where((e) =>
                                                    e.projects.projectName ==
                                                    _model
                                                        .projectListDropDownValue)
                                                .toList()
                                                .first
                                                .projectId,
                                          );
                                        }),
                                        Future(() async {
                                          await action_blocks.fetchProjectById(
                                            context,
                                            id: _model.myTaskList
                                                .where((e) =>
                                                    e.projects.projectName ==
                                                    _model
                                                        .projectListDropDownValue)
                                                .toList()
                                                .first
                                                .projectId,
                                          );
                                        }),
                                      ]);
                                    },
                                    width: 300.0,
                                    height: 48.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                        ),
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 20.0,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    elevation: 2.0,
                                    borderColor:
                                        FlutterFlowTheme.of(context).blueColor,
                                    borderWidth: 1.0,
                                    borderRadius: 8.0,
                                    margin: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 6.0),
                                    hidesUnderline: true,
                                    isOverButton: true,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                        child: Text(
                          _model.projectListDropDownValue!,
                          style:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                      Expanded(
                        child: Builder(
                          builder: (context) {
                            final myTask = _model.myTaskList
                                .where((e) =>
                                    e.projects.projectName ==
                                    _model.projectListDropDownValue)
                                .toList();
                            if (myTask.isEmpty) {
                              return Center(
                                child: Image.asset(
                                  'assets/images/9264822-removebg-preview.png',
                                  width: 200.0,
                                  height: 200.0,
                                  fit: BoxFit.scaleDown,
                                ),
                              );
                            }
                            return ListView.separated(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: myTask.length,
                              separatorBuilder: (_, __) =>
                                  const SizedBox(height: 8.0),
                              itemBuilder: (context, myTaskIndex) {
                                final myTaskItem = myTask[myTaskIndex];
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      'AddTaskScreen',
                                      queryParameters: {
                                        'id': serializeParam(
                                          myTaskItem.projectId,
                                          ParamType.int,
                                        ),
                                        'projectName': serializeParam(
                                          myTaskItem.projects.projectName,
                                          ParamType.String,
                                        ),
                                        'isEdit': serializeParam(
                                          true,
                                          ParamType.bool,
                                        ),
                                        'taskDetail': serializeParam(
                                          myTaskItem,
                                          ParamType.DataStruct,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: TaskTileWidget(
                                    key: Key(
                                        'Key4bk_${myTaskIndex}_of_${myTask.length}'),
                                    myTaskDetail: myTaskItem,
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ].divide(const SizedBox(height: 12.0)),
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
