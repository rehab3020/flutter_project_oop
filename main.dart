import 'back_end_developer.dart';
import 'employee.dart';
import 'accountant.dart';
import 'company.dart';
import 'flutter_developer.dart';
import 'manager.dart';
import 'project.dart';
import 'team.dart';
import 'ui_ux_developer.dart';

void main() {
  Manager manager = Manager(
    2546,
    100000,
    name: 'Hady',
    age: 50,
    address: 'Giza',
    phone: '01254',
    hoursWork: 200,
    takeSalaryIsDone: true,
  );
  Accountant accountant = Accountant(
    2567,
    10000,
    name: 'mohammed',
    age: 30,
    address: 'cairo',
    phone: '01254',
    hoursWork: 200,
    takeSalaryIsDone: true,
  );
  Company company = Company(
    name: 'cop static',
    address: 'Giza,Egypt',
    phone: '0152356488',
    manager: manager,
    accountant: accountant,
    amount: 10000000,
  );
  Employee teamLeader = Employee(
    5890,
    10000,
    name: 'zaid',
    age: 35,
    address: 'address',
    phone: '055907',
    hoursWork: 250,
    takeSalaryIsDone: true,
  );
  Employee notExistInCompany = Employee(
    12,
    10000,
    name: 'hhhhh',
    age: 35,
    address: 'ess',
    phone: '055907',
    hoursWork: 200,
    takeSalaryIsDone: true,
  );
  Manager mangerNotExistInCompany = Manager(
    120,
    10000,
    name: 'Mahmoud',
    age: 35,
    address: 'alix',
    phone: '011514873',
    hoursWork: 200,
    takeSalaryIsDone: true,
  );
  FlutterDeveloper flutterDeveloper = FlutterDeveloper(
    true,
    true,
    true,
    5480,
    10000,
    name: 'rehab',
    age: 24,
    address: 'giza',
    phone: '9714799',
    hoursWork: 200,
    takeSalaryIsDone: false,
  );
  FlutterDeveloper flutterDeveloper1 = FlutterDeveloper(
    true,
    true,
    true,
    5980,
    10000,
    name: 'hossam',
    age: 30,
    address: 'giza',
    phone: '0115467',
    hoursWork: 210,
    takeSalaryIsDone: true,
  );
  BackendDeveloper backendDeveloper = BackendDeveloper(
    true,
    true,
    true,
    54970,
    9000,
    name: 'ahmed',
    age: 25,
    address: 'Aswan',
    phone: '0112154',
    hoursWork: 250,
    takeSalaryIsDone: true,
  );
  BackendDeveloper backendDeveloper1 = BackendDeveloper(
    true,
    true,
    true,
    54970,
    9000,
    name: 'omar',
    age: 27,
    address: 'Fayoum',
    phone: '012215854',
    hoursWork: 190,
    takeSalaryIsDone: false,
  );
  UiUxDeveloper uiUxDeveloper = UiUxDeveloper(
    true,
    true,
    0145,
    15000,
    name: 'sari',
    age: 29,
    address: 'giza',
    phone: '01506484',
    hoursWork: 200,
    takeSalaryIsDone: true,
  );
  Project project = Project(
    title: 'e-commerce',
    price: 30000,
    receivingDate: DateTime(2023, 10,12),
    deadline: DateTime(2023, 12,1),
  );
  Team team = Team(
    teamName: 'teamName',
    teamLeader: teamLeader,
  );
  team.addProject(project, teamLeader.id);
  print('----------------------------------------');
  team.addEmployeeToTeam(flutterDeveloper);
  team.addEmployeeToTeam(flutterDeveloper1);
  print('----------------------------------------');
  team.showNameAllDevelopers();
  print('----------------------------------------');
  team.showNamesFlutterDevelopers();
  print('----------------------------------------');
  team.showNamesBackendDevelopers();
  print('----------------------------------------');
  team.addEmployeeToTeam(backendDeveloper);
  team.addEmployeeToTeam(backendDeveloper1);
  print('----------------------------------------');
  team.showNamesBackendDevelopers();
  print('----------------------------------------');
  team.showNameAllDevelopers();
  print('----------------------------------------');
  team.addEmployeeToTeam(uiUxDeveloper);
  print('----------------------------------------');
  team.showNamesUiUxDevelopers();
  print('----------------------------------------');
  team.showNameAllDevelopers();
  print('----------------------------------------');
  team.addEmployeeToTeam(notExistInCompany);
  print('----------------------------------------');
  team.addProject(project, flutterDeveloper1.id);
  print('----------------------------------------');
  team.getAllProjects();
  print('----------------------------------------');
  team.addProject(project, teamLeader.id);
  print('----------------------------------------');
  team.getAllProjects();
  // company.addEmployeeInListOfEmployee(uiUxDeveloper);
  // company.addTeamInListOfTeams(team);
  // company.addEmployeeInListOfEmployee(manager);
  // company.addEmployeeInListOfEmployee(accountant);
  // company.addEmployeeInListOfEmployee(flutterDeveloper);
  // company.addEmployeeInListOfEmployee(backendDeveloper);
  // company.addEmployeeInListOfEmployee(flutterDeveloper);
  // company.addEmployeeInListOfEmployee(backendDeveloper);
  // company.addEmployeeInListOfEmployee(backendDeveloper1);
  // company.addEmployeeInListOfEmployee(flutterDeveloper1);

  // print('Information of all employees in our company');
  // print("____________________________________________");
  // print(company.listOfEmployee);
  // print('Information of all teams in our company');
  // print("____________________________________________");
  // print(company.listOfTeams);
}
