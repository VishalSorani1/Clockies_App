import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'forgot_password_screen_widget.dart' show ForgotPasswordScreenWidget;
import 'package:flutter/material.dart';

class ForgotPasswordScreenModel
    extends FlutterFlowModel<ForgotPasswordScreenWidget> {
  ///  Local state fields for this page.

  bool forgotPasswordState = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ForgotPassowrdTextField widget.
  FocusNode? forgotPassowrdTextFieldFocusNode;
  TextEditingController? forgotPassowrdTextFieldTextController;
  String? Function(BuildContext, String?)?
      forgotPassowrdTextFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (Forgot Password API)] action in LoginButton widget.
  ApiCallResponse? forgotPassowrdAPIResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    forgotPassowrdTextFieldFocusNode?.dispose();
    forgotPassowrdTextFieldTextController?.dispose();
  }
}
