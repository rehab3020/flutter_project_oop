import 'back_end_developer.dart';
import 'employee.dart';
import 'flutter_developer.dart';
import 'project.dart';
import 'ui_ux_developer.dart';
class Team {
  String teamName;
  Employee teamLeader;
  List<FlutterDeveloper> _flutterGroup = [];
  List<BackendDeveloper> _backendGroup = [];
  List<UiUxDeveloper> _uiUxGroup = [];
  List<Employee> _allTeamDeveloper = [];
  List<Project> projects = [];
  Team({required this.teamName, required this.teamLeader});
  void showNamesFlutterDevelopers() {
    if (_flutterGroup.isEmpty) {
      print("there is no flutter developers ");
    } else {
      for (var value in _flutterGroup) {
        print(value.name);
      }
    }
  }
  void showNamesBackendDevelopers() {
    if (_backendGroup.isEmpty) {
      print("there is no backend developers");
    } else {
      for (var value in _backendGroup) {
        print(value.name);
      }}}
  void showNamesUiUxDevelopers() {
    if (_uiUxGroup.isEmpty) {
      print("there is no ui/ux developers");
    } else {
      for (var value in _uiUxGroup) {
        print(value.name);
      }}}
  void showNameAllDevelopers() {
    if (_allTeamDeveloper.isEmpty) {
      print("there is no developers");
    } else {
      for (var value in _allTeamDeveloper) {
        print(value.name);
      }}}
  void addEmployeeToTeam(Employee employee) {
    if (employee is FlutterDeveloper) {
      if (_flutterGroup.length <= 8) {
        _flutterGroup.add(employee);
        _allTeamDeveloper.add(employee);
        print("added ${employee.name} to flutter group");
      } else {
        print("the flutter group is full");}
    } else if (employee is BackendDeveloper) {
      if (_backendGroup.length <= 5) {
        _backendGroup.add(employee);
        _allTeamDeveloper.add(employee);
        print("added ${employee.name} to backend group");
      } else {print("the backend group is full");}
    } else if (employee is UiUxDeveloper) {
      if (_uiUxGroup.length <= 2) {
        _uiUxGroup.add(employee);
        _allTeamDeveloper.add(employee);
        print("added ${employee.name} to ui/UX group");
      } else {
        print("the ui/UX group is full");
      }
    } else {
      print("can't add this employee , the team want just flutter or backend or ui/ui developer");
    }}
  void addProject(Project project, int teamLeaderId) {
    Duration difference = project.deadline.difference(project.receivingDate);
    if (teamLeaderId == teamLeader.id) {
      if (_flutterGroup.length >= 2 &&
          _backendGroup.length >= 2 &&
          _uiUxGroup.isNotEmpty) {
        if (difference.inDays>30) {
          projects.add(project);
          print('the project added successfully');
        } else {
          print("The team can't finish any project before 30 days");
        }
      } else {
        print(
            'this team is not complete , The team must contain at least one ui developer, at least 2 flutter developer, '
            'and at least 2 backend developer');
      }
    } else {
      print(
          " you are not team leader , if you are team leader please enter your correct id ");
    }
  }
  void getAllProjects() {
    if (projects.isEmpty) {
      print('the teams doesn\'t have any project');
    } else {
      for (var value in projects) {
        print(value.toString());
      }
    }
  }
  void groupUiFinished(Project project, int teamLeaderId) {
    if (teamLeaderId == teamLeader.id) {
      if (projects.contains(project)) {
        project.uiFinished();
      } else {
        print("this Project is not exist with the team");
      }
    } else {
      print(
          "you are not team leader , if you are team leader please enter your correct id ");
    }
  }
  void groupFlutterFinished(Project project, int teamLeaderId) {
    if (teamLeaderId == teamLeader.id) {
      if (projects.contains(project)) {
        project.flutterFinished();
      } else {
        print("this Project is not exist with the team");
      }
    } else {
      print(
          "you are not team leader , if you are team leader please enter your correct id ");
    }
  }
  void groupBackendFinished(Project project, int teamLeaderId) {
    if (teamLeaderId == teamLeader.id) {
      if (projects.contains(project)) {
        project.backendFinished();
      } else {
        print("this Project is not exist with the team");
      }
    } else {
      print(
          "you are not team leader , if you are team leader please enter your correct id ");
    }
  }
}
