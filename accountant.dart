import 'company.dart';
import 'employee.dart';

class Accountant extends Employee {
  Accountant(
    super.id,
    super.salary, {
    required super.name,
    required super.age,
    required super.address,
    required super.phone,
    required super.hoursWork,
    required super.takeSalaryIsDone,
  });
  void calculateSalary(Employee employee, Company company,
      {double bonus = 0.1}) {
    if (company.isEmployeeExist(this) && company.isEmployeeExist(employee)) {
      if (employee.hoursWork > 200) {
        employee.salary = employee.salary +
            (employee.hoursWork - 200) * employee.salary * bonus;
        return;
      } else {
        employee.salary = employee.salary -
            (200 - employee.hoursWork) * employee.salary * bonus;
      }
    } else {
      print("this employee not exist in ${company.name} company");
    }
  }

  void sendSalary(Employee employee) {
    employee.takeSalaryIsDone = true;
  }

  void addBonusEmployee(Employee employee, Company company, double bonus) {
    calculateSalary(employee, company, bonus: bonus);
  }

  void minusFromEmployee(Employee employee, Company company, double minus) {
    calculateSalary(employee, company, bonus: minus);
  }
  @override
  String toString() {
    return '\nAccountant Info\n'
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
