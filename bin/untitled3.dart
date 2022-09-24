import 'dart:io';
import 'client/client.dart';
import 'employee/account.dart';
import 'employee/employee.dart';
import 'employee/it.dart';
import 'employee/manger.dart';
import 'employee/salesman.dart';

void main() {
  print('Magic Cars Welcomes you 😀');
  print('Enter 1 For clients serves. \n      2 For employee serves. ');
  String? x= stdin.readLineSync()!;
  if (x == '1') {
    var client = Client();
  }
  else {
    var x = Employee();
    x.enterYourData();
    if(x.employeeType.toString() == '1')
    {
      print('you are manger');
      var manger = Manger();
      manger.permissionsM();
      stdin.readLineSync()!;
      manger.salaryCalculation();
    }
    else if (x.employeeType.toString() == '2')
    {
      print('you are IT');
      var it = IT();
      it.permissionsI();
      stdin.readLineSync()!;
      it.salaryCalculation();
    }
    else if (x.employeeType.toString() == '3')
    {
      print('you are Salesman');
      var salesman = Salesman();
      salesman.permissionsS();
      stdin.readLineSync()!;
      salesman.salaryCalculation();
    }
    else if (x.employeeType.toString() == '4')
    {
      print('you are Accountant');
      var account = Account();
      account.permissionsA();
      stdin.readLineSync()!;
      account.salaryCalculation();

    }


  }
}
