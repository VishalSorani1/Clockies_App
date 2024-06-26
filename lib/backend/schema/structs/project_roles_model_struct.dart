// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProjectRolesModelStruct extends BaseStruct {
  ProjectRolesModelStruct({
    int? id,
    String? roleName,
    int? projectId,
    String? createdAt,
    String? updatedAt,
  })  : _id = id,
        _roleName = roleName,
        _projectId = projectId,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "roleName" field.
  String? _roleName;
  String get roleName => _roleName ?? '';
  set roleName(String? val) => _roleName = val;

  bool hasRoleName() => _roleName != null;

  // "projectId" field.
  int? _projectId;
  int get projectId => _projectId ?? 0;
  set projectId(int? val) => _projectId = val;

  void incrementProjectId(int amount) => projectId = projectId + amount;

  bool hasProjectId() => _projectId != null;

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

  static ProjectRolesModelStruct fromMap(Map<String, dynamic> data) =>
      ProjectRolesModelStruct(
        id: castToType<int>(data['id']),
        roleName: data['roleName'] as String?,
        projectId: castToType<int>(data['projectId']),
        createdAt: data['createdAt'] as String?,
        updatedAt: data['updatedAt'] as String?,
      );

  static ProjectRolesModelStruct? maybeFromMap(dynamic data) => data is Map
      ? ProjectRolesModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'roleName': _roleName,
        'projectId': _projectId,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'roleName': serializeParam(
          _roleName,
          ParamType.String,
        ),
        'projectId': serializeParam(
          _projectId,
          ParamType.int,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updatedAt': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProjectRolesModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ProjectRolesModelStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        roleName: deserializeParam(
          data['roleName'],
          ParamType.String,
          false,
        ),
        projectId: deserializeParam(
          data['projectId'],
          ParamType.int,
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
      );

  @override
  String toString() => 'ProjectRolesModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProjectRolesModelStruct &&
        id == other.id &&
        roleName == other.roleName &&
        projectId == other.projectId &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, roleName, projectId, createdAt, updatedAt]);
}

ProjectRolesModelStruct createProjectRolesModelStruct({
  int? id,
  String? roleName,
  int? projectId,
  String? createdAt,
  String? updatedAt,
}) =>
    ProjectRolesModelStruct(
      id: id,
      roleName: roleName,
      projectId: projectId,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
