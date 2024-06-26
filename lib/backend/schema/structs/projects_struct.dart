// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProjectsStruct extends BaseStruct {
  ProjectsStruct({
    int? id,
    String? projectName,
    int? totalHrs,
    bool? allowOverSpent,
    bool? allowManualTask,
    String? status,
    String? description,
    String? createdAt,
    String? updatedAt,
    int? clientId,
  })  : _id = id,
        _projectName = projectName,
        _totalHrs = totalHrs,
        _allowOverSpent = allowOverSpent,
        _allowManualTask = allowManualTask,
        _status = status,
        _description = description,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _clientId = clientId;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "projectName" field.
  String? _projectName;
  String get projectName => _projectName ?? '';
  set projectName(String? val) => _projectName = val;

  bool hasProjectName() => _projectName != null;

  // "totalHrs" field.
  int? _totalHrs;
  int get totalHrs => _totalHrs ?? 0;
  set totalHrs(int? val) => _totalHrs = val;

  void incrementTotalHrs(int amount) => totalHrs = totalHrs + amount;

  bool hasTotalHrs() => _totalHrs != null;

  // "allowOverSpent" field.
  bool? _allowOverSpent;
  bool get allowOverSpent => _allowOverSpent ?? false;
  set allowOverSpent(bool? val) => _allowOverSpent = val;

  bool hasAllowOverSpent() => _allowOverSpent != null;

  // "allowManualTask" field.
  bool? _allowManualTask;
  bool get allowManualTask => _allowManualTask ?? false;
  set allowManualTask(bool? val) => _allowManualTask = val;

  bool hasAllowManualTask() => _allowManualTask != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "createdAt" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "clientId" field.
  int? _clientId;
  int get clientId => _clientId ?? 0;
  set clientId(int? val) => _clientId = val;

  void incrementClientId(int amount) => clientId = clientId + amount;

  bool hasClientId() => _clientId != null;

  static ProjectsStruct fromMap(Map<String, dynamic> data) => ProjectsStruct(
        id: castToType<int>(data['id']),
        projectName: data['projectName'] as String?,
        totalHrs: castToType<int>(data['totalHrs']),
        allowOverSpent: data['allowOverSpent'] as bool?,
        allowManualTask: data['allowManualTask'] as bool?,
        status: data['status'] as String?,
        description: data['description'] as String?,
        createdAt: data['createdAt'] as String?,
        updatedAt: data['updatedAt'] as String?,
        clientId: castToType<int>(data['clientId']),
      );

  static ProjectsStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProjectsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'projectName': _projectName,
        'totalHrs': _totalHrs,
        'allowOverSpent': _allowOverSpent,
        'allowManualTask': _allowManualTask,
        'status': _status,
        'description': _description,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
        'clientId': _clientId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'projectName': serializeParam(
          _projectName,
          ParamType.String,
        ),
        'totalHrs': serializeParam(
          _totalHrs,
          ParamType.int,
        ),
        'allowOverSpent': serializeParam(
          _allowOverSpent,
          ParamType.bool,
        ),
        'allowManualTask': serializeParam(
          _allowManualTask,
          ParamType.bool,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updatedAt': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'clientId': serializeParam(
          _clientId,
          ParamType.int,
        ),
      }.withoutNulls;

  static ProjectsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProjectsStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        projectName: deserializeParam(
          data['projectName'],
          ParamType.String,
          false,
        ),
        totalHrs: deserializeParam(
          data['totalHrs'],
          ParamType.int,
          false,
        ),
        allowOverSpent: deserializeParam(
          data['allowOverSpent'],
          ParamType.bool,
          false,
        ),
        allowManualTask: deserializeParam(
          data['allowManualTask'],
          ParamType.bool,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updatedAt'],
          ParamType.String,
          false,
        ),
        clientId: deserializeParam(
          data['clientId'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ProjectsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProjectsStruct &&
        id == other.id &&
        projectName == other.projectName &&
        totalHrs == other.totalHrs &&
        allowOverSpent == other.allowOverSpent &&
        allowManualTask == other.allowManualTask &&
        status == other.status &&
        description == other.description &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        clientId == other.clientId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        projectName,
        totalHrs,
        allowOverSpent,
        allowManualTask,
        status,
        description,
        createdAt,
        updatedAt,
        clientId
      ]);
}

ProjectsStruct createProjectsStruct({
  int? id,
  String? projectName,
  int? totalHrs,
  bool? allowOverSpent,
  bool? allowManualTask,
  String? status,
  String? description,
  String? createdAt,
  String? updatedAt,
  int? clientId,
}) =>
    ProjectsStruct(
      id: id,
      projectName: projectName,
      totalHrs: totalHrs,
      allowOverSpent: allowOverSpent,
      allowManualTask: allowManualTask,
      status: status,
      description: description,
      createdAt: createdAt,
      updatedAt: updatedAt,
      clientId: clientId,
    );
