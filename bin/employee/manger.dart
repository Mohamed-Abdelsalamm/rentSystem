import 'employee.dart';

class Manger extends Employee {
  double? salaryMonth;

  Manger({this.salaryMonth});

  @override
  void salaryCalculation() {
    // TODO: implement salaryCalculation
    super.salaryCalculation();
    salary = salary! + 3000;
    salaryMonth=salary;
    print('Your salary is $salaryMonth');
  }

  void permissionsM() {
    print('Your permissions');
    print(
      ' 1-Calculate salary.\n 2-Show company accounts.\n 3-show company vacations.\n 4-show company achievements.\n 5-show employee data.',
    );
  }
}
