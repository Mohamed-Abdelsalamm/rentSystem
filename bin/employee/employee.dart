import 'dart:io';

class Employee {
  String? user;
  String? password;
  double? salary;
  String? permissions;
  String? employeeType;
  int? years;

  Employee(
      {this.user,
      this.password,
      this.employeeType,
      this.permissions,
      this.years,
      this.salary});

  void enterYourData()
  {
    print('Enter your UserName & Password');
    user = stdin.readLineSync()!;
    password = stdin.readLineSync()!;
    print('Welcome Mr.$user 😀');
    print('Enter Your position in the company');
    print(' 1-Manger \n 2-It \n 3-Salesman \n 4-Accountant');
    employeeType = stdin.readLineSync()!;
  }

  void salaryCalculation()
  {
    print('Enter the number of years you worked in the company');
    years = int.parse(stdin.readLineSync()!);
    salary=(years! * 1000);
  }

}
