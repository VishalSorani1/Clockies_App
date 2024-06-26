// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClientsModelStruct extends BaseStruct {
  ClientsModelStruct({
    int? id,
    String? clientName,
    String? createdAt,
    String? updatedAt,
    int? companyId,
  })  : _id = id,
        _clientName = clientName,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _companyId = companyId;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "clientName" field.
  String? _clientName;
  String get clientName => _clientName ?? '';
  set clientName(String? val) => _clientName = val;

  bool hasClientName() => _clientName != null;

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

  static ClientsModelStruct fromMap(Map<String, dynamic> data) =>
      ClientsModelStruct(
        id: castToType<int>(data['id']),
        clientName: data['clientName'] as String?,
        createdAt: data['createdAt'] as String?,
        updatedAt: data['updatedAt'] as String?,
        companyId: castToType<int>(data['companyId']),
      );

  static ClientsModelStruct? maybeFromMap(dynamic data) => data is Map
      ? ClientsModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'clientName': _clientName,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
        'companyId': _companyId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'clientName': serializeParam(
          _clientName,
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
        'companyId': serializeParam(
          _companyId,
          ParamType.int,
        ),
      }.withoutNulls;

  static ClientsModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      ClientsModelStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        clientName: deserializeParam(
          data['clientName'],
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
        companyId: deserializeParam(
          data['companyId'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ClientsModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ClientsModelStruct &&
        id == other.id &&
        clientName == other.clientName &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        companyId == other.companyId;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, clientName, createdAt, updatedAt, companyId]);
}

ClientsModelStruct createClientsModelStruct({
  int? id,
  String? clientName,
  String? createdAt,
  String? updatedAt,
  int? companyId,
}) =>
    ClientsModelStruct(
      id: id,
      clientName: clientName,
      createdAt: createdAt,
      updatedAt: updatedAt,
      companyId: companyId,
    );
