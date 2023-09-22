import 'employee.dart';

class Manager extends Employee {
  Manager(
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
    return '\nManger Info\n'
        'name: $name\n'
        'age: $age\n'
        'id: $id\n'
        'salary: $salary\n'
        'address: $address\n'
        'phone: $phone\n'
        'hoursWork: $hoursWork\n'
        'takeSalaryIsDone: $takeSalaryIsDone\n';
  }
}
