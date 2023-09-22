import 'employee.dart';

class FlutterDeveloper extends Employee {
  bool canUseCleanArc;
  bool canUseFirebase;
  bool canUseBloc;
  FlutterDeveloper(
    this.canUseBloc,
    this.canUseCleanArc,
    this.canUseFirebase,
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
    return '\nFlutter Developer\n'
        'name: $name\n'
        'age: $age\n'
        'id: $id\n'
        'salary: $salary\n'
        'address: $address\n'
        'phone: $phone\n'
        'can use CleanArc: $canUseCleanArc\n'
        'can use Firebase: $canUseFirebase\n'
        'can use Bloc: $canUseBloc\n'
        'hoursWork: $hoursWork\n'
        'takeSalaryIsDone: $takeSalaryIsDone\n';
  }
}
