// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProjectMemberModelStruct extends BaseStruct {
  ProjectMemberModelStruct({
    int? id,
    int? userHours,
    int? projectRoleId,
    int? order,
    String? createdAt,
    String? updatedAt,
    int? projectId,
    int? userId,
    ProjectRolesModelStruct? projectRoles,
    String? totalTime,
    UserModelStruct? user,
  })  : _id = id,
        _userHours = userHours,
        _projectRoleId = projectRoleId,
        _order = order,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _projectId = projectId,
        _userId = userId,
        _projectRoles = projectRoles,
        _totalTime = totalTime,
        _user = user;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "userHours" field.
  int? _userHours;
  int get userHours => _userHours ?? 0;
  set userHours(int? val) => _userHours = val;

  void incrementUserHours(int amount) => userHours = userHours + amount;

  bool hasUserHours() => _userHours != null;

  // "projectRoleId" field.
  int? _projectRoleId;
  int get projectRoleId => _projectRoleId ?? 0;
  set projectRoleId(int? val) => _projectRoleId = val;

  void incrementProjectRoleId(int amount) =>
      projectRoleId = projectRoleId + amount;

  bool hasProjectRoleId() => _projectRoleId != null;

  // "order" field.
  int? _order;
  int get order => _order ?? 0;
  set order(int? val) => _order = val;

  void incrementOrder(int amount) => order = order + amount;

  bool hasOrder() => _order != null;

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

  // "projectId" field.
  int? _projectId;
  int get projectId => _projectId ?? 0;
  set projectId(int? val) => _projectId = val;

  void incrementProjectId(int amount) => projectId = projectId + amount;

  bool hasProjectId() => _projectId != null;

  // "userId" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;

  void incrementUserId(int amount) => userId = userId + amount;

  bool hasUserId() => _userId != null;

  // "projectRoles" field.
  ProjectRolesModelStruct? _projectRoles;
  ProjectRolesModelStruct get projectRoles =>
      _projectRoles ?? ProjectRolesModelStruct();
  set projectRoles(ProjectRolesModelStruct? val) => _projectRoles = val;

  void updateProjectRoles(Function(ProjectRolesModelStruct) updateFn) {
    updateFn(_projectRoles ??= ProjectRolesModelStruct());
  }

  bool hasProjectRoles() => _projectRoles != null;

  // "totalTime" field.
  String? _totalTime;
  String get totalTime => _totalTime ?? '';
  set totalTime(String? val) => _totalTime = val;

  bool hasTotalTime() => _totalTime != null;

  // "user" field.
  UserModelStruct? _user;
  UserModelStruct get user => _user ?? UserModelStruct();
  set user(UserModelStruct? val) => _user = val;

  void updateUser(Function(UserModelStruct) updateFn) {
    updateFn(_user ??= UserModelStruct());
  }

  bool hasUser() => _user != null;

  static ProjectMemberModelStruct fromMap(Map<String, dynamic> data) =>
      ProjectMemberModelStruct(
        id: castToType<int>(data['id']),
        userHours: castToType<int>(data['userHours']),
        projectRoleId: castToType<int>(data['projectRoleId']),
        order: castToType<int>(data['order']),
        createdAt: data['createdAt'] as String?,
        updatedAt: data['updatedAt'] as String?,
        projectId: castToType<int>(data['projectId']),
        userId: castToType<int>(data['userId']),
        projectRoles:
            ProjectRolesModelStruct.maybeFromMap(data['projectRoles']),
        totalTime: data['totalTime'] as String?,
        user: UserModelStruct.maybeFromMap(data['user']),
      );

  static ProjectMemberModelStruct? maybeFromMap(dynamic data) => data is Map
      ? ProjectMemberModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'userHours': _userHours,
        'projectRoleId': _projectRoleId,
        'order': _order,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
        'projectId': _projectId,
        'userId': _userId,
        'projectRoles': _projectRoles?.toMap(),
        'totalTime': _totalTime,
        'user': _user?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'userHours': serializeParam(
          _userHours,
          ParamType.int,
        ),
        'projectRoleId': serializeParam(
          _projectRoleId,
          ParamType.int,
        ),
        'order': serializeParam(
          _order,
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
        'projectId': serializeParam(
          _projectId,
          ParamType.int,
        ),
        'userId': serializeParam(
          _userId,
          ParamType.int,
        ),
        'projectRoles': serializeParam(
          _projectRoles,
          ParamType.DataStruct,
        ),
        'totalTime': serializeParam(
          _totalTime,
          ParamType.String,
        ),
        'user': serializeParam(
          _user,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ProjectMemberModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ProjectMemberModelStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        userHours: deserializeParam(
          data['userHours'],
          ParamType.int,
          false,
        ),
        projectRoleId: deserializeParam(
          data['projectRoleId'],
          ParamType.int,
          false,
        ),
        order: deserializeParam(
          data['order'],
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
        projectId: deserializeParam(
          data['projectId'],
          ParamType.int,
          false,
        ),
        userId: deserializeParam(
          data['userId'],
          ParamType.int,
          false,
        ),
        projectRoles: deserializeStructParam(
          data['projectRoles'],
          ParamType.DataStruct,
          false,
          structBuilder: ProjectRolesModelStruct.fromSerializableMap,
        ),
        totalTime: deserializeParam(
          data['totalTime'],
          ParamType.String,
          false,
        ),
        user: deserializeStructParam(
          data['user'],
          ParamType.DataStruct,
          false,
          structBuilder: UserModelStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ProjectMemberModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProjectMemberModelStruct &&
        id == other.id &&
        userHours == other.userHours &&
        projectRoleId == other.projectRoleId &&
        order == other.order &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        projectId == other.projectId &&
        userId == other.userId &&
        projectRoles == other.projectRoles &&
        totalTime == other.totalTime &&
        user == other.user;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        userHours,
        projectRoleId,
        order,
        createdAt,
        updatedAt,
        projectId,
        userId,
        projectRoles,
        totalTime,
        user
      ]);
}

ProjectMemberModelStruct createProjectMemberModelStruct({
  int? id,
  int? userHours,
  int? projectRoleId,
  int? order,
  String? createdAt,
  String? updatedAt,
  int? projectId,
  int? userId,
  ProjectRolesModelStruct? projectRoles,
  String? totalTime,
  UserModelStruct? user,
}) =>
    ProjectMemberModelStruct(
      id: id,
      userHours: userHours,
      projectRoleId: projectRoleId,
      order: order,
      createdAt: createdAt,
      updatedAt: updatedAt,
      projectId: projectId,
      userId: userId,
      projectRoles: projectRoles ?? ProjectRolesModelStruct(),
      totalTime: totalTime,
      user: user ?? UserModelStruct(),
    );
