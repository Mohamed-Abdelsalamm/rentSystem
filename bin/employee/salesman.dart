import 'employee.dart';

class Salesman extends Employee {
  double? salaryMonth;

  Salesman({this.salaryMonth});

  @override
  void salaryCalculation() {
    // TODO: implement salaryCalculation
    super.salaryCalculation();
    salary = salary! + 2000;
    salaryMonth=salary;
    print('Your salary is $salaryMonth');
  }

  void permissionsS() {
    print('Your permissions');
    print(
      ' 1-Calculate salary.\n 2-Show Client accounts.\n 3-show sales achievements.\n 4-show clients data.',
    );
  }
}
