import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _userToken = prefs.getString('ff_userToken') ?? _userToken;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_user')) {
        try {
          final serializedData = prefs.getString('ff_user') ?? '{}';
          _user =
              UserModelStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _TaskStatus = prefs.getStringList('ff_TaskStatus') ?? _TaskStatus;
    });
    _safeInit(() {
      _TaskType = prefs.getStringList('ff_TaskType') ?? _TaskType;
    });
    _safeInit(() {
      _sectionList = prefs
              .getStringList('ff_sectionList')
              ?.map((x) {
                try {
                  return SectionModelStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _sectionList;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _userToken = '';
  String get userToken => _userToken;
  set userToken(String value) {
    _userToken = value;
    prefs.setString('ff_userToken', value);
  }

  List<ClientsModelStruct> _clientData = [];
  List<ClientsModelStruct> get clientData => _clientData;
  set clientData(List<ClientsModelStruct> value) {
    _clientData = value;
  }

  void addToClientData(ClientsModelStruct value) {
    clientData.add(value);
  }

  void removeFromClientData(ClientsModelStruct value) {
    clientData.remove(value);
  }

  void removeAtIndexFromClientData(int index) {
    clientData.removeAt(index);
  }

  void updateClientDataAtIndex(
    int index,
    ClientsModelStruct Function(ClientsModelStruct) updateFn,
  ) {
    clientData[index] = updateFn(_clientData[index]);
  }

  void insertAtIndexInClientData(int index, ClientsModelStruct value) {
    clientData.insert(index, value);
  }

  UserModelStruct _user = UserModelStruct.fromSerializableMap(
      jsonDecode('{\"permissions\":\"[]\"}'));
  UserModelStruct get user => _user;
  set user(UserModelStruct value) {
    _user = value;
    prefs.setString('ff_user', value.serialize());
  }

  void updateUserStruct(Function(UserModelStruct) updateFn) {
    updateFn(_user);
    prefs.setString('ff_user', _user.serialize());
  }

  List<String> _TaskStatus = ['To Do', 'In Progress', 'Completed', 'Blocked'];
  List<String> get TaskStatus => _TaskStatus;
  set TaskStatus(List<String> value) {
    _TaskStatus = value;
    prefs.setStringList('ff_TaskStatus', value);
  }

  void addToTaskStatus(String value) {
    TaskStatus.add(value);
    prefs.setStringList('ff_TaskStatus', _TaskStatus);
  }

  void removeFromTaskStatus(String value) {
    TaskStatus.remove(value);
    prefs.setStringList('ff_TaskStatus', _TaskStatus);
  }

  void removeAtIndexFromTaskStatus(int index) {
    TaskStatus.removeAt(index);
    prefs.setStringList('ff_TaskStatus', _TaskStatus);
  }

  void updateTaskStatusAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    TaskStatus[index] = updateFn(_TaskStatus[index]);
    prefs.setStringList('ff_TaskStatus', _TaskStatus);
  }

  void insertAtIndexInTaskStatus(int index, String value) {
    TaskStatus.insert(index, value);
    prefs.setStringList('ff_TaskStatus', _TaskStatus);
  }

  List<String> _TaskType = ['Task', 'Issue', 'CR'];
  List<String> get TaskType => _TaskType;
  set TaskType(List<String> value) {
    _TaskType = value;
    prefs.setStringList('ff_TaskType', value);
  }

  void addToTaskType(String value) {
    TaskType.add(value);
    prefs.setStringList('ff_TaskType', _TaskType);
  }

  void removeFromTaskType(String value) {
    TaskType.remove(value);
    prefs.setStringList('ff_TaskType', _TaskType);
  }

  void removeAtIndexFromTaskType(int index) {
    TaskType.removeAt(index);
    prefs.setStringList('ff_TaskType', _TaskType);
  }

  void updateTaskTypeAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    TaskType[index] = updateFn(_TaskType[index]);
    prefs.setStringList('ff_TaskType', _TaskType);
  }

  void insertAtIndexInTaskType(int index, String value) {
    TaskType.insert(index, value);
    prefs.setStringList('ff_TaskType', _TaskType);
  }

  List<SectionModelStruct> _sectionList = [];
  List<SectionModelStruct> get sectionList => _sectionList;
  set sectionList(List<SectionModelStruct> value) {
    _sectionList = value;
    prefs.setStringList(
        'ff_sectionList', value.map((x) => x.serialize()).toList());
  }

  void addToSectionList(SectionModelStruct value) {
    sectionList.add(value);
    prefs.setStringList(
        'ff_sectionList', _sectionList.map((x) => x.serialize()).toList());
  }

  void removeFromSectionList(SectionModelStruct value) {
    sectionList.remove(value);
    prefs.setStringList(
        'ff_sectionList', _sectionList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromSectionList(int index) {
    sectionList.removeAt(index);
    prefs.setStringList(
        'ff_sectionList', _sectionList.map((x) => x.serialize()).toList());
  }

  void updateSectionListAtIndex(
    int index,
    SectionModelStruct Function(SectionModelStruct) updateFn,
  ) {
    sectionList[index] = updateFn(_sectionList[index]);
    prefs.setStringList(
        'ff_sectionList', _sectionList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInSectionList(int index, SectionModelStruct value) {
    sectionList.insert(index, value);
    prefs.setStringList(
        'ff_sectionList', _sectionList.map((x) => x.serialize()).toList());
  }

  List<ProjectModelStruct> _projectDetail = [];
  List<ProjectModelStruct> get projectDetail => _projectDetail;
  set projectDetail(List<ProjectModelStruct> value) {
    _projectDetail = value;
  }

  void addToProjectDetail(ProjectModelStruct value) {
    projectDetail.add(value);
  }

  void removeFromProjectDetail(ProjectModelStruct value) {
    projectDetail.remove(value);
  }

  void removeAtIndexFromProjectDetail(int index) {
    projectDetail.removeAt(index);
  }

  void updateProjectDetailAtIndex(
    int index,
    ProjectModelStruct Function(ProjectModelStruct) updateFn,
  ) {
    projectDetail[index] = updateFn(_projectDetail[index]);
  }

  void insertAtIndexInProjectDetail(int index, ProjectModelStruct value) {
    projectDetail.insert(index, value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
