import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

Future fetchClientData(BuildContext context) async {
  ApiCallResponse? fetchClientApiResult;

  fetchClientApiResult = await FetchClientsCall.call(
    authToken: FFAppState().userToken,
  );

  if ((fetchClientApiResult.succeeded ?? true)) {
    FFAppState().clientData = FetchClientsCall.clientData(
      (fetchClientApiResult.jsonBody ?? ''),
    )!
        .map((e) => ClientsModelStruct.maybeFromMap(e))
        .withoutNulls
        .toList()
        .toList()
        .cast<ClientsModelStruct>();
    FFAppState().update(() {});
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text(
          'false',
          style: TextStyle(),
        ),
        duration: const Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
  }
}

Future fetchSections(
  BuildContext context, {
  required int? id,
}) async {
  ApiCallResponse? fetchSectionApiResult;

  fetchSectionApiResult = await FetchSectionCall.call(
    authToken: FFAppState().userToken,
    projectId: id,
  );

  if ((fetchSectionApiResult.succeeded ?? true)) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text(
          'true',
          style: TextStyle(),
        ),
        duration: const Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).secondary,
      ),
    );
    FFAppState().sectionList = FetchSectionCall.sectionDetail(
      (fetchSectionApiResult.jsonBody ?? ''),
    )!
        .map((e) => SectionModelStruct.maybeFromMap(e))
        .withoutNulls
        .toList()
        .toList()
        .cast<SectionModelStruct>();
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text(
          'false',
          style: TextStyle(),
        ),
        duration: const Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).secondary,
      ),
    );
  }
}

Future fetchProjectById(
  BuildContext context, {
  required int? id,
}) async {
  ApiCallResponse? fetchProjectApiResult;

  fetchProjectApiResult = await FetchProjectByIDCall.call(
    authToken: FFAppState().userToken,
    id: id,
  );

  if ((fetchProjectApiResult.succeeded ?? true)) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text(
          'true project api',
          style: TextStyle(),
        ),
        duration: const Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).secondary,
      ),
    );
    FFAppState().projectDetail =
        ProjectModelStruct.maybeFromMap(FetchProjectByIDCall.projectDetail(
      (fetchProjectApiResult.jsonBody ?? ''),
    ))!;
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text(
          'false project api',
          style: TextStyle(),
        ),
        duration: const Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).secondary,
      ),
    );
  }
}
