// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DashboardModelStruct extends BaseStruct {
  DashboardModelStruct({
    int? id,
    String? userName,
    String? email,
    String? today,
    String? yesterday,
    String? weekTime,
    String? monthTime,
    int? trackerId,
    int? modifiedBy,
    int? taskId,
    String? taskName,
    int? projectId,
    String? projectName,
    int? clientId,
    String? clientName,
    String? startTime,
    String? stopTime,
  })  : _id = id,
        _userName = userName,
        _email = email,
        _today = today,
        _yesterday = yesterday,
        _weekTime = weekTime,
        _monthTime = monthTime,
        _trackerId = trackerId,
        _modifiedBy = modifiedBy,
        _taskId = taskId,
        _taskName = taskName,
        _projectId = projectId,
        _projectName = projectName,
        _clientId = clientId,
        _clientName = clientName,
        _startTime = startTime,
        _stopTime = stopTime;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  set userName(String? val) => _userName = val;

  bool hasUserName() => _userName != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "today" field.
  String? _today;
  String get today => _today ?? '';
  set today(String? val) => _today = val;

  bool hasToday() => _today != null;

  // "yesterday" field.
  String? _yesterday;
  String get yesterday => _yesterday ?? '';
  set yesterday(String? val) => _yesterday = val;

  bool hasYesterday() => _yesterday != null;

  // "weekTime" field.
  String? _weekTime;
  String get weekTime => _weekTime ?? '';
  set weekTime(String? val) => _weekTime = val;

  bool hasWeekTime() => _weekTime != null;

  // "monthTime" field.
  String? _monthTime;
  String get monthTime => _monthTime ?? '';
  set monthTime(String? val) => _monthTime = val;

  bool hasMonthTime() => _monthTime != null;

  // "trackerId" field.
  int? _trackerId;
  int get trackerId => _trackerId ?? 0;
  set trackerId(int? val) => _trackerId = val;

  void incrementTrackerId(int amount) => trackerId = trackerId + amount;

  bool hasTrackerId() => _trackerId != null;

  // "modifiedBy" field.
  int? _modifiedBy;
  int get modifiedBy => _modifiedBy ?? 0;
  set modifiedBy(int? val) => _modifiedBy = val;

  void incrementModifiedBy(int amount) => modifiedBy = modifiedBy + amount;

  bool hasModifiedBy() => _modifiedBy != null;

  // "taskId" field.
  int? _taskId;
  int get taskId => _taskId ?? 0;
  set taskId(int? val) => _taskId = val;

  void incrementTaskId(int amount) => taskId = taskId + amount;

  bool hasTaskId() => _taskId != null;

  // "taskName" field.
  String? _taskName;
  String get taskName => _taskName ?? '';
  set taskName(String? val) => _taskName = val;

  bool hasTaskName() => _taskName != null;

  // "projectId" field.
  int? _projectId;
  int get projectId => _projectId ?? 0;
  set projectId(int? val) => _projectId = val;

  void incrementProjectId(int amount) => projectId = projectId + amount;

  bool hasProjectId() => _projectId != null;

  // "projectName" field.
  String? _projectName;
  String get projectName => _projectName ?? '';
  set projectName(String? val) => _projectName = val;

  bool hasProjectName() => _projectName != null;

  // "clientId" field.
  int? _clientId;
  int get clientId => _clientId ?? 0;
  set clientId(int? val) => _clientId = val;

  void incrementClientId(int amount) => clientId = clientId + amount;

  bool hasClientId() => _clientId != null;

  // "clientName" field.
  String? _clientName;
  String get clientName => _clientName ?? '';
  set clientName(String? val) => _clientName = val;

  bool hasClientName() => _clientName != null;

  // "startTime" field.
  String? _startTime;
  String get startTime => _startTime ?? '';
  set startTime(String? val) => _startTime = val;

  bool hasStartTime() => _startTime != null;

  // "stopTime" field.
  String? _stopTime;
  String get stopTime => _stopTime ?? '';
  set stopTime(String? val) => _stopTime = val;

  bool hasStopTime() => _stopTime != null;

  static DashboardModelStruct fromMap(Map<String, dynamic> data) =>
      DashboardModelStruct(
        id: castToType<int>(data['id']),
        userName: data['userName'] as String?,
        email: data['email'] as String?,
        today: data['today'] as String?,
        yesterday: data['yesterday'] as String?,
        weekTime: data['weekTime'] as String?,
        monthTime: data['monthTime'] as String?,
        trackerId: castToType<int>(data['trackerId']),
        modifiedBy: castToType<int>(data['modifiedBy']),
        taskId: castToType<int>(data['taskId']),
        taskName: data['taskName'] as String?,
        projectId: castToType<int>(data['projectId']),
        projectName: data['projectName'] as String?,
        clientId: castToType<int>(data['clientId']),
        clientName: data['clientName'] as String?,
        startTime: data['startTime'] as String?,
        stopTime: data['stopTime'] as String?,
      );

  static DashboardModelStruct? maybeFromMap(dynamic data) => data is Map
      ? DashboardModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'userName': _userName,
        'email': _email,
        'today': _today,
        'yesterday': _yesterday,
        'weekTime': _weekTime,
        'monthTime': _monthTime,
        'trackerId': _trackerId,
        'modifiedBy': _modifiedBy,
        'taskId': _taskId,
        'taskName': _taskName,
        'projectId': _projectId,
        'projectName': _projectName,
        'clientId': _clientId,
        'clientName': _clientName,
        'startTime': _startTime,
        'stopTime': _stopTime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'userName': serializeParam(
          _userName,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'today': serializeParam(
          _today,
          ParamType.String,
        ),
        'yesterday': serializeParam(
          _yesterday,
          ParamType.String,
        ),
        'weekTime': serializeParam(
          _weekTime,
          ParamType.String,
        ),
        'monthTime': serializeParam(
          _monthTime,
          ParamType.String,
        ),
        'trackerId': serializeParam(
          _trackerId,
          ParamType.int,
        ),
        'modifiedBy': serializeParam(
          _modifiedBy,
          ParamType.int,
        ),
        'taskId': serializeParam(
          _taskId,
          ParamType.int,
        ),
        'taskName': serializeParam(
          _taskName,
          ParamType.String,
        ),
        'projectId': serializeParam(
          _projectId,
          ParamType.int,
        ),
        'projectName': serializeParam(
          _projectName,
          ParamType.String,
        ),
        'clientId': serializeParam(
          _clientId,
          ParamType.int,
        ),
        'clientName': serializeParam(
          _clientName,
          ParamType.String,
        ),
        'startTime': serializeParam(
          _startTime,
          ParamType.String,
        ),
        'stopTime': serializeParam(
          _stopTime,
          ParamType.String,
        ),
      }.withoutNulls;

  static DashboardModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      DashboardModelStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        userName: deserializeParam(
          data['userName'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        today: deserializeParam(
          data['today'],
          ParamType.String,
          false,
        ),
        yesterday: deserializeParam(
          data['yesterday'],
          ParamType.String,
          false,
        ),
        weekTime: deserializeParam(
          data['weekTime'],
          ParamType.String,
          false,
        ),
        monthTime: deserializeParam(
          data['monthTime'],
          ParamType.String,
          false,
        ),
        trackerId: deserializeParam(
          data['trackerId'],
          ParamType.int,
          false,
        ),
        modifiedBy: deserializeParam(
          data['modifiedBy'],
          ParamType.int,
          false,
        ),
        taskId: deserializeParam(
          data['taskId'],
          ParamType.int,
          false,
        ),
        taskName: deserializeParam(
          data['taskName'],
          ParamType.String,
          false,
        ),
        projectId: deserializeParam(
          data['projectId'],
          ParamType.int,
          false,
        ),
        projectName: deserializeParam(
          data['projectName'],
          ParamType.String,
          false,
        ),
        clientId: deserializeParam(
          data['clientId'],
          ParamType.int,
          false,
        ),
        clientName: deserializeParam(
          data['clientName'],
          ParamType.String,
          false,
        ),
        startTime: deserializeParam(
          data['startTime'],
          ParamType.String,
          false,
        ),
        stopTime: deserializeParam(
          data['stopTime'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DashboardModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DashboardModelStruct &&
        id == other.id &&
        userName == other.userName &&
        email == other.email &&
        today == other.today &&
        yesterday == other.yesterday &&
        weekTime == other.weekTime &&
        monthTime == other.monthTime &&
        trackerId == other.trackerId &&
        modifiedBy == other.modifiedBy &&
        taskId == other.taskId &&
        taskName == other.taskName &&
        projectId == other.projectId &&
        projectName == other.projectName &&
        clientId == other.clientId &&
        clientName == other.clientName &&
        startTime == other.startTime &&
        stopTime == other.stopTime;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        userName,
        email,
        today,
        yesterday,
        weekTime,
        monthTime,
        trackerId,
        modifiedBy,
        taskId,
        taskName,
        projectId,
        projectName,
        clientId,
        clientName,
        startTime,
        stopTime
      ]);
}

DashboardModelStruct createDashboardModelStruct({
  int? id,
  String? userName,
  String? email,
  String? today,
  String? yesterday,
  String? weekTime,
  String? monthTime,
  int? trackerId,
  int? modifiedBy,
  int? taskId,
  String? taskName,
  int? projectId,
  String? projectName,
  int? clientId,
  String? clientName,
  String? startTime,
  String? stopTime,
}) =>
    DashboardModelStruct(
      id: id,
      userName: userName,
      email: email,
      today: today,
      yesterday: yesterday,
      weekTime: weekTime,
      monthTime: monthTime,
      trackerId: trackerId,
      modifiedBy: modifiedBy,
      taskId: taskId,
      taskName: taskName,
      projectId: projectId,
      projectName: projectName,
      clientId: clientId,
      clientName: clientName,
      startTime: startTime,
      stopTime: stopTime,
    );
