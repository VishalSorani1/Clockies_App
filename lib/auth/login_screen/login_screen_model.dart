import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_screen_widget.dart' show LoginScreenWidget;
import 'package:flutter/material.dart';

class LoginScreenModel extends FlutterFlowModel<LoginScreenWidget> {
  ///  Local state fields for this page.

  bool emailState = true;

  bool passwordState = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for EmailTextField widget.
  FocusNode? emailTextFieldFocusNode;
  TextEditingController? emailTextFieldTextController;
  String? Function(BuildContext, String?)?
      emailTextFieldTextControllerValidator;
  // State field(s) for PassowrdTextField widget.
  FocusNode? passowrdTextFieldFocusNode;
  TextEditingController? passowrdTextFieldTextController;
  late bool passowrdTextFieldVisibility;
  String? Function(BuildContext, String?)?
      passowrdTextFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (Login API)] action in LoginButton widget.
  ApiCallResponse? loginApiResult;

  @override
  void initState(BuildContext context) {
    passowrdTextFieldVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailTextFieldFocusNode?.dispose();
    emailTextFieldTextController?.dispose();

    passowrdTextFieldFocusNode?.dispose();
    passowrdTextFieldTextController?.dispose();
  }
}
