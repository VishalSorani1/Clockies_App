// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserModelStruct extends BaseStruct {
  UserModelStruct({
    int? id,
    String? userName,
    String? email,
    String? userTimezone,
    String? status,
    int? userRoleId,
    String? createdAt,
    String? updatedAt,
    int? companyId,
    List<String>? permissions,
  })  : _id = id,
        _userName = userName,
        _email = email,
        _userTimezone = userTimezone,
        _status = status,
        _userRoleId = userRoleId,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _companyId = companyId,
        _permissions = permissions;

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

  // "userTimezone" field.
  String? _userTimezone;
  String get userTimezone => _userTimezone ?? '';
  set userTimezone(String? val) => _userTimezone = val;

  bool hasUserTimezone() => _userTimezone != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "userRoleId" field.
  int? _userRoleId;
  int get userRoleId => _userRoleId ?? 0;
  set userRoleId(int? val) => _userRoleId = val;

  void incrementUserRoleId(int amount) => userRoleId = userRoleId + amount;

  bool hasUserRoleId() => _userRoleId != null;

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

  // "companyId" field.
  int? _companyId;
  int get companyId => _companyId ?? 0;
  set companyId(int? val) => _companyId = val;

  void incrementCompanyId(int amount) => companyId = companyId + amount;

  bool hasCompanyId() => _companyId != null;

  // "permissions" field.
  List<String>? _permissions;
  List<String> get permissions => _permissions ?? const [];
  set permissions(List<String>? val) => _permissions = val;

  void updatePermissions(Function(List<String>) updateFn) {
    updateFn(_permissions ??= []);
  }

  bool hasPermissions() => _permissions != null;

  static UserModelStruct fromMap(Map<String, dynamic> data) => UserModelStruct(
        id: castToType<int>(data['id']),
        userName: data['userName'] as String?,
        email: data['email'] as String?,
        userTimezone: data['userTimezone'] as String?,
        status: data['status'] as String?,
        userRoleId: castToType<int>(data['userRoleId']),
        createdAt: data['createdAt'] as String?,
        updatedAt: data['updatedAt'] as String?,
        companyId: castToType<int>(data['companyId']),
        permissions: getDataList(data['permissions']),
      );

  static UserModelStruct? maybeFromMap(dynamic data) => data is Map
      ? UserModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'userName': _userName,
        'email': _email,
        'userTimezone': _userTimezone,
        'status': _status,
        'userRoleId': _userRoleId,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
        'companyId': _companyId,
        'permissions': _permissions,
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
        'userTimezone': serializeParam(
          _userTimezone,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'userRoleId': serializeParam(
          _userRoleId,
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
        'companyId': serializeParam(
          _companyId,
          ParamType.int,
        ),
        'permissions': serializeParam(
          _permissions,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static UserModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserModelStruct(
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
        userTimezone: deserializeParam(
          data['userTimezone'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        userRoleId: deserializeParam(
          data['userRoleId'],
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
        companyId: deserializeParam(
          data['companyId'],
          ParamType.int,
          false,
        ),
        permissions: deserializeParam<String>(
          data['permissions'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'UserModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is UserModelStruct &&
        id == other.id &&
        userName == other.userName &&
        email == other.email &&
        userTimezone == other.userTimezone &&
        status == other.status &&
        userRoleId == other.userRoleId &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        companyId == other.companyId &&
        listEquality.equals(permissions, other.permissions);
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        userName,
        email,
        userTimezone,
        status,
        userRoleId,
        createdAt,
        updatedAt,
        companyId,
        permissions
      ]);
}

UserModelStruct createUserModelStruct({
  int? id,
  String? userName,
  String? email,
  String? userTimezone,
  String? status,
  int? userRoleId,
  String? createdAt,
  String? updatedAt,
  int? companyId,
}) =>
    UserModelStruct(
      id: id,
      userName: userName,
      email: email,
      userTimezone: userTimezone,
      status: status,
      userRoleId: userRoleId,
      createdAt: createdAt,
      updatedAt: updatedAt,
      companyId: companyId,
    );
