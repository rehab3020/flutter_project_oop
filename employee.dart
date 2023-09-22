import 'accountant.dart';
import 'company.dart';
import 'manager.dart';
import 'person.dart';
class Employee implements Person {
  bool takeSalaryIsDone;
  int hoursWork;
  final int _id;
  double _salary;
  @override
  String? address;
  @override
  int? age;
  @override
  int get id => _id;
  @override
  String? name;
  @override
  String? phone;
  @override
  double get salary => _salary;
  //@override
  // set id(int i) {
  //   if (this is Manager) {
  //     _id = i;
  //   } else {
  //     print('only manager can modify id');
  //   }
  // }
  @override
  set salary(double s) {
    if (this is Manager || this is Accountant) {
      _salary = s;
    } else {
      print('only manager or accountant can modify salary');
    }
  }
  Employee(
    this._id,
    this._salary, {
    required this.name,
    required this.age,
    required this.address,
    required this.phone,
    required this.hoursWork,
    required this.takeSalaryIsDone,
  });
  void setSalaryForEmployee({
    required Employee employee,
    required Company company,
    required double newSalary,
  }) {
    if (company.isEmployeeExist(this) && company.isEmployeeExist(employee)) {
      if (this is Manager || this is Accountant) {
        employee.salary = newSalary;
        print("set salary successfully");
      } else {
        if (this is Manager) {
          print(" you Are not manager of ${company.name} company ");
        }
        if (this is Accountant) {
          print(" you Are not accountant of ${company.name}company ");
        }
      }
    } else {
      print("this employee not exist in ${company.name} company");
    }
  }
}
