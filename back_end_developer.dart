import 'package:section1/tasks/Sat%2028%20dart%20project/employee.dart';

class BackendDeveloper extends Employee {
  bool canUseLaravel;
  bool canUseDjango;
  bool canUseExpressJs;

  BackendDeveloper(
    this.canUseLaravel,
    this.canUseDjango,
    this.canUseExpressJs,
    super.id,
    super.salary, {
    required super.name,
    required super.age,
    required super.address,
    required super.phone,
    required super.hoursWork,
    required super.takeSalaryIsDone,
  });
  @override
  String toString() {
    return '\nBackend Developer\n'
        'name: $name\n'
        'age: $age\n'
        'id: $id\n'
        'salary: $salary \n'
        'address: $address\n'
        'phone: $phone\n'
        'can use Laravel: $canUseLaravel\n'
        'can use Django: $canUseDjango\n'
        'can use ExpressJs: $canUseExpressJs\n'
        'hoursWork: $hoursWork\n'
        'takeSalaryIsDone: $takeSalaryIsDone\n';
  }
}
