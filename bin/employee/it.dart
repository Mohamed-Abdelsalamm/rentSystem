import 'employee.dart';

class IT extends Employee {
  double? salaryMonth;

  IT({this.salaryMonth});

  @override
  void salaryCalculation() {
    // TODO: implement salaryCalculation
    super.salaryCalculation();
    salary = salary! + 2500 ;
    salaryMonth=salary;
    print('Your salary is $salaryMonth');
  }

  void permissionsI() {
    print('Your permissions');
    print(
      ' 1-Calculate salary.\n 2-Show Client data.\n 3-show salesman data .\n 4-show company accounts .',
    );
  }
}
