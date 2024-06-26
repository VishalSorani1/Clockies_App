// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SectionModelStruct extends BaseStruct {
  SectionModelStruct({
    int? id,
    String? name,
    int? projectId,
    String? createdAt,
    String? updatedAt,
    TaskModelStruct? tasks,
  })  : _id = id,
        _name = name,
        _projectId = projectId,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _tasks = tasks;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

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

  // "tasks" field.
  TaskModelStruct? _tasks;
  TaskModelStruct get tasks => _tasks ?? TaskModelStruct();
  set tasks(TaskModelStruct? val) => _tasks = val;

  void updateTasks(Function(TaskModelStruct) updateFn) {
    updateFn(_tasks ??= TaskModelStruct());
  }

  bool hasTasks() => _tasks != null;

  static SectionModelStruct fromMap(Map<String, dynamic> data) =>
      SectionModelStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        projectId: castToType<int>(data['projectId']),
        createdAt: data['createdAt'] as String?,
        updatedAt: data['updatedAt'] as String?,
        tasks: TaskModelStruct.maybeFromMap(data['tasks']),
      );

  static SectionModelStruct? maybeFromMap(dynamic data) => data is Map
      ? SectionModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'projectId': _projectId,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
        'tasks': _tasks?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
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
        'tasks': serializeParam(
          _tasks,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static SectionModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      SectionModelStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
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
        tasks: deserializeStructParam(
          data['tasks'],
          ParamType.DataStruct,
          false,
          structBuilder: TaskModelStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'SectionModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SectionModelStruct &&
        id == other.id &&
        name == other.name &&
        projectId == other.projectId &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        tasks == other.tasks;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, name, projectId, createdAt, updatedAt, tasks]);
}

SectionModelStruct createSectionModelStruct({
  int? id,
  String? name,
  int? projectId,
  String? createdAt,
  String? updatedAt,
  TaskModelStruct? tasks,
}) =>
    SectionModelStruct(
      id: id,
      name: name,
      projectId: projectId,
      createdAt: createdAt,
      updatedAt: updatedAt,
      tasks: tasks ?? TaskModelStruct(),
    );
