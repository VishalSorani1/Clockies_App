import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class LoginAPICall {
  static Future<ApiCallResponse> call({
    String? email = 'vishal.sorani@bosctechlabs.com',
    String? password = '1!ygcxuhvb',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login API',
      apiUrl: 'http://3.144.249.140:5000/api/auth/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic userData(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  static dynamic user(dynamic response) => getJsonField(
        response,
        r'''$.data.user''',
      );
}

class ForgotPasswordAPICall {
  static Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Forgot Password API',
      apiUrl: 'http://3.144.249.140:5000/api/auth/forgotpassword',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic forgotPassowrd(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class DashboardAPICall {
  static Future<ApiCallResponse> call({
    String? authToken =
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjE3LCJ1c2VyTmFtZSI6IlZpc2hhbCBTb3JhbmkiLCJlbWFpbCI6InZpc2hhbC5zb3JhbmlAYm9zY3RlY2hsYWJzLmNvbSIsInVzZXJUaW1lem9uZSI6IkFzaWEvQ2FsY3V0dGEiLCJzdGF0dXMiOiJhY3RpdmUiLCJ1c2VyUm9sZUlkIjoxLCJjcmVhdGVkQXQiOiIyMDI0LTA2LTIxVDA1OjMzOjE1LjAwMFoiLCJ1cGRhdGVkQXQiOiIyMDI0LTA2LTIxVDA1OjMzOjE1LjAwMFoiLCJjb21wYW55SWQiOjE3LCJwZXJtaXNzaW9ucyI6WyJDT05URU5UX0RBU0hCT0FSRCIsIlJVTl9USU1FVFJBQ0tFUiIsIkVESVRfVElNRUxJTkUiLCJERUxFVEVfVElNRUxJTkUiLCJDUkVBVEVfUkVQT1JUIiwiUkVBRF9SRVBPUlQiLCJDUkVBVEVfUFJPSkVDVCIsIkVESVRfUFJPSkVDVCIsIlJFQURfUFJPSkVDVCIsIkRFTEVURV9QUk9KRUNUIiwiQ1JFQVRFX1RBU0siLCJSRUFEX1RBU0siLCJFRElUX1RBU0siLCJERUxFVEVfVEFTSyIsIkNSRUFURV9DTElFTlQiLCJSRUFEX0NMSUVOVCIsIkVESVRfQ0xJRU5UIiwiREVMRVRFX0NMSUVOVCIsIkNSRUFURV9VU0VSIiwiUkVBRF9VU0VSIiwiRURJVF9VU0VSIiwiREVMRVRFX1VTRVIiLCJDUkVBVEVfVEVBTSIsIlJFQURfVEVBTSIsIkVESVRfVEVBTSIsIkRFTEVURV9URUFNIiwiQ1JFQVRFX1BST0pFQ1RfTUVNQkVSIiwiUkVBRF9QUk9KRUNUX01FTUJFUiIsIkVESVRfUFJPSkVDVF9NRU1CRVIiLCJERUxFVEVfUFJPSkVDVF9NRU1CRVIiLCJSRUFEX0FDQ09VTlQiLCJDUkVBVEVfU0VDVElPTiIsIlJFQURfU0VDVElPTiIsIkVESVRfU0VDVElPTiIsIkRFTEVURV9TRUNUSU9OIl0sImlhdCI6MTcxODk2NDU2OSwiZXhwIjoxNzIwMjYwNTY5fQ.wjzAjzWVCYJnS2RazBtDQbOm9pbwzfrdNauRI-Eb2v8',
    int? pageSize,
    int? pageNumber,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Dashboard API',
      apiUrl: 'http://3.144.249.140:5000/api/dashboard',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '$authToken',
      },
      params: {
        'pageNumber': pageNumber,
        'pageSize': pageSize,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? userDataList(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class FetchProjectsCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? pageNumber,
    int? pageSize,
    String? status = '',
    String? search = '',
    String? orderBy = '',
    String? order = '',
    int? allowManualTask,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Fetch Projects',
      apiUrl: 'http://3.144.249.140:5000/api/project',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '$authToken',
      },
      params: {
        'pageNumber': pageNumber,
        'pageSize': pageSize,
        'status': status,
        'search': search,
        'orderBy': orderBy,
        'order': order,
        'allowManualTask': allowManualTask,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? projectList(dynamic response) => getJsonField(
        response,
        r'''$.data.rows''',
        true,
      ) as List?;
}

class UpdateProjectDetailCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? id,
    String? projectName = '',
    int? clientId,
    int? totalHrs,
    bool? allowOverSpent,
    bool? allowManualTask,
    String? status = '',
    String? description = '',
  }) async {
    final ffApiRequestBody = '''
{
  "projectName": "$projectName",
  "clientId": $clientId,
  "totalHrs": "$totalHrs",
  "allowOverSpent": "$allowOverSpent",
  "allowManualTask": "$allowManualTask",
  "status": "$status",
  "description": "$description"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Project Detail',
      apiUrl: 'http://3.144.249.140:5000/api/project/$id',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': '$authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FetchClientsCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? pageNumber,
    int? pageSize,
    String? search = '',
    bool? order,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Fetch Clients',
      apiUrl: 'http://3.144.249.140:5000/api/client',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '$authToken',
      },
      params: {
        'pageNumber': pageNumber,
        'pageSize': pageSize,
        'search': search,
        'order': order,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? clientData(dynamic response) => getJsonField(
        response,
        r'''$.data.rows''',
        true,
      ) as List?;
}

class CreateNewProjectCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? projectName = '',
    int? clientId,
    int? totalHrs,
    bool? allowOverSpent,
    bool? allowManualTask,
    String? status = '',
    String? description = '',
  }) async {
    final ffApiRequestBody = '''
{
  "projectName": "$projectName",
  "clientId": $clientId,
  "totalHrs": "$totalHrs",
  "allowOverSpent": "$allowOverSpent",
  "allowManualTask": "$allowManualTask",
  "status": "$status",
  "description": "$description"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create New Project',
      apiUrl: 'http://3.144.249.140:5000/api/project/add',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': '$authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteProjectCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? id,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Delete Project',
      apiUrl: 'http://3.144.249.140:5000/api/project/$id',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': '$authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FetchProjectByIDCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? id,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Fetch Project By ID',
      apiUrl: 'http://3.144.249.140:5000/api/project/$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '$authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic projectDetail(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  static List? projectMembers(dynamic response) => getJsonField(
        response,
        r'''$.data.projectmember''',
        true,
      ) as List?;
}

class FetchMyTasksCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? pageNumber,
    int? pageSize,
    String? search = '',
    String? order = '',
    String? orderBy = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Fetch My Tasks',
      apiUrl: 'http://3.144.249.140:5000/api/task/myTask',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '$authToken',
      },
      params: {
        'pageNumber': pageNumber,
        'pageSize': pageSize,
        'search': search,
        'order': order,
        'orderBy': orderBy,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? myTasks(dynamic response) => getJsonField(
        response,
        r'''$.data.rows''',
        true,
      ) as List?;
}

class FetchMyTaskCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? pageNumber,
    int? pageSize,
    String? search = '',
    String? order = '',
    String? orderBy = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Fetch My Task',
      apiUrl: 'http://3.144.249.140:5000/api/task/myTask',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '$authToken',
      },
      params: {
        'pageNumber': pageNumber,
        'pageSize': pageSize,
        'search': search,
        'order': order,
        'orderBy': orderBy,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? taskList(dynamic response) => getJsonField(
        response,
        r'''$.data.rows''',
        true,
      ) as List?;
}

class FetchSectionCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? pageNumber,
    int? pageSize,
    String? search = '',
    int? projectId,
    String? orderBy = 'name',
    String? order = 'ASC',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Fetch Section',
      apiUrl: 'http://3.144.249.140:5000/api/section',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '$authToken',
      },
      params: {
        'pageNumber': pageNumber,
        'pageSize': pageSize,
        'search': search,
        'projectId': projectId,
        'orderBy': orderBy,
        'order': order,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? sectionDetail(dynamic response) => getJsonField(
        response,
        r'''$.data.rows''',
        true,
      ) as List?;
  static List<String>? sectionName(dynamic response) => (getJsonField(
        response,
        r'''$.data.rows[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class AddNewTaskCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? taskName = '',
    int? userId,
    int? sectionId,
    String? endDate = '',
    String? startDate = '',
    String? description = '',
    String? status = '',
    String? taskType = '',
    int? plannedHours,
    int? projectId,
  }) async {
    final ffApiRequestBody = '''
{
  "taskName": "$taskName",
  "userId": $userId,
  "sectionId": $sectionId,
  "endDate": "$endDate",
  "startDate": "$startDate",
  "description": "$description",
  "status": "$status",
  "taskType": "$taskType",
  "plannedHours": $plannedHours,
  "projectId": $projectId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add New Task',
      apiUrl: 'http://3.144.249.140:5000/api/task/add',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': '$authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic taskData(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
