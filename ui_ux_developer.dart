import 'employee.dart';

class UiUxDeveloper extends Employee {
  bool canUseFigma;
  bool canUseAdobeXd;
  UiUxDeveloper(
    this.canUseFigma,
    this.canUseAdobeXd,
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
        'salary: $salary\n'
        'address: $address\n'
        'phone: $phone\n'
        'can use Figma: $canUseFigma\n'
        'can use AdobeXd: $canUseAdobeXd\n'
        'hoursWork: $hoursWork\n'
        'takeSalaryIsDone: $takeSalaryIsDone\n';
  }
}
