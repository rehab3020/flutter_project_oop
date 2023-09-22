import 'accountant.dart';
import 'employee.dart';
import 'manager.dart';
import 'team.dart';

class Company {
  String name;
  String address;
  String phone;
  int amount;
  Manager manager;
  Accountant accountant;
  List<Team> listOfTeams = [];
  List<Employee> listOfEmployee = [];

  Company({
    required this.name,
    required this.address,
    required this.phone,
    required this.manager,
    required this.accountant,
    required this.amount,
  });
  bool isEmployeeExist(Employee employee) {
    if (listOfEmployee.isEmpty) {
      return false;
    }
    if (listOfEmployee.contains(employee)) {
      return true;
    } else {
      return false;
    }
  }

  bool isTeamExist(Team team) {
    if (listOfTeams.isEmpty) {
      return false;
    }
    if (listOfTeams.contains(team)) {
      return true;
    } else {
      return false;
    }
  }

  void addEmployeeInListOfEmployee(Employee employee) {
    if (isEmployeeExist(employee)) {
      print('This employee already exists');
    } else {
      listOfEmployee.add(employee);
    }
  }

  void addTeamInListOfTeams(Team team) {
    if (isTeamExist(team)) {
      print('This team already exists');
    } else {
      listOfTeams.add(team);
    }
  }

  @override
  String toString() {
    return 'name: $name, '
        'address: $address, '
        'phone: $phone, '
        'manager: ${manager.name}, '
        'accountant: ${accountant.name}, '
        'amount : $amount, \n\n';
  }
}
