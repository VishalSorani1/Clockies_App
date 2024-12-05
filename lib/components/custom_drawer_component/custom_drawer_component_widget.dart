import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_drawer_component_model.dart';
export 'custom_drawer_component_model.dart';

class CustomDrawerComponentWidget extends StatefulWidget {
  const CustomDrawerComponentWidget({super.key});

  @override
  State<CustomDrawerComponentWidget> createState() =>
      _CustomDrawerComponentWidgetState();
}

class _CustomDrawerComponentWidgetState
    extends State<CustomDrawerComponentWidget> {
  late CustomDrawerComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomDrawerComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 48.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/Clockies_png.png',
                          width: 100.0,
                          height: 80.0,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                    Text(
                      FFAppConstants.clockies,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'PT Serif',
                            fontSize: 22.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  Navigator.pop(context);

                  context.goNamed('HomePage');
                },
                child: ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.home,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 18.0,
                  ),
                  title: Text(
                    FFAppConstants.dashboard,
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                  tileColor: FlutterFlowTheme.of(context).tertiary,
                  dense: false,
                  contentPadding: const EdgeInsets.all(0.0),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  Navigator.pop(context);

                  context.goNamed('MyTaskScreen');
                },
                child: ListTile(
                  leading: Icon(
                    Icons.task,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 24.0,
                  ),
                  title: Text(
                    FFAppConstants.myTask,
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                  tileColor: FlutterFlowTheme.of(context).tertiary,
                  dense: false,
                  contentPadding: const EdgeInsets.all(0.0),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  Navigator.pop(context);

                  context.pushNamed('ProjectScreen');
                },
                child: ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.solidFileAlt,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 22.0,
                  ),
                  title: Text(
                    FFAppConstants.projects,
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                  tileColor: FlutterFlowTheme.of(context).tertiary,
                  dense: false,
                  contentPadding: const EdgeInsets.all(0.0),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  FFAppState().userToken = '';
                  FFAppState().user = UserModelStruct.fromSerializableMap(
                      jsonDecode('{\"permissions\":\"[]\"}'));
                  setState(() {});

                  context.goNamed('LoginScreen');
                },
                child: ListTile(
                  leading: Icon(
                    Icons.logout_rounded,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 22.0,
                  ),
                  title: Text(
                    FFAppConstants.logout,
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                  tileColor: FlutterFlowTheme.of(context).tertiary,
                  dense: false,
                  contentPadding: const EdgeInsets.all(0.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
