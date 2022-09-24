import 'employee.dart';

class Account extends Employee {
  double? salaryMonth;

  Account({this.salaryMonth});

  @override
  void salaryCalculation() {
    // TODO: implement salaryCalculation
    super.salaryCalculation();
    salary = salary! + 1000;
    salaryMonth=salary;
    print('Your salary is $salaryMonth');
  }

  void permissionsA() {
    print('Your permissions');
    print(
      ' 1-Calculate salary.\n 2-Show Client accounts.\n 3-show sales .\n 4-show company accounts .',
    );
  }
}
