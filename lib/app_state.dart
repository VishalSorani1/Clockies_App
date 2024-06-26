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
    _safeInit(() {
      _Status = prefs.getStringList('ff_Status') ?? _Status;
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

  ProjectModelStruct _projectDetail = ProjectModelStruct();
  ProjectModelStruct get projectDetail => _projectDetail;
  set projectDetail(ProjectModelStruct value) {
    _projectDetail = value;
  }

  void updateProjectDetailStruct(Function(ProjectModelStruct) updateFn) {
    updateFn(_projectDetail);
  }

  List<ProjectMemberModelStruct> _memberList = [];
  List<ProjectMemberModelStruct> get memberList => _memberList;
  set memberList(List<ProjectMemberModelStruct> value) {
    _memberList = value;
  }

  void addToMemberList(ProjectMemberModelStruct value) {
    memberList.add(value);
  }

  void removeFromMemberList(ProjectMemberModelStruct value) {
    memberList.remove(value);
  }

  void removeAtIndexFromMemberList(int index) {
    memberList.removeAt(index);
  }

  void updateMemberListAtIndex(
    int index,
    ProjectMemberModelStruct Function(ProjectMemberModelStruct) updateFn,
  ) {
    memberList[index] = updateFn(_memberList[index]);
  }

  void insertAtIndexInMemberList(int index, ProjectMemberModelStruct value) {
    memberList.insert(index, value);
  }

  List<String> _Status = ['archive', 'active', 'complete'];
  List<String> get Status => _Status;
  set Status(List<String> value) {
    _Status = value;
    prefs.setStringList('ff_Status', value);
  }

  void addToStatus(String value) {
    Status.add(value);
    prefs.setStringList('ff_Status', _Status);
  }

  void removeFromStatus(String value) {
    Status.remove(value);
    prefs.setStringList('ff_Status', _Status);
  }

  void removeAtIndexFromStatus(int index) {
    Status.removeAt(index);
    prefs.setStringList('ff_Status', _Status);
  }

  void updateStatusAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    Status[index] = updateFn(_Status[index]);
    prefs.setStringList('ff_Status', _Status);
  }

  void insertAtIndexInStatus(int index, String value) {
    Status.insert(index, value);
    prefs.setStringList('ff_Status', _Status);
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
