import 'dart:io';
import '../client/client.dart';
import 'honda.dart';
import 'kia.dart';
import 'mazda.dart';
import 'mercedesBenz.dart';
import 'toyota.dart';

class Cars {
  String? airConditioner;
  String? gps;
  String? model;
  String? motionVector;
  int? days;
  double cost;
  String? type;

  Cars(
      {
      this.days,
      this.airConditioner,
      this.motionVector,
      this.gps,
      this.model,
      this.cost = 0,
       required this.type,
      });

  void choseCar() {
    print('Chose The Car model you want to rent ');
    print(' 1-MercedesBenz \n 2-Honda \n 3-Toyota \n 4-KIA \n 5-Mazda');
    model = stdin.readLineSync()!;
    if (model == '1') {
      var mercedes = MercedesBenz(type: type);
      mercedes.calculateCost();
    } else if (model == '2') {
      var honda = Honda(type: type);
      honda.calculateCost();
    } else if (model == '3') {
      var toyota = Toyota(type: type);
      toyota.calculateCost();
    } else if (model == '4') {
      var kia = Kia(type: type);
      kia.calculateCost();
    } else if (model == '5') {
      var mazda = Mazda(type: type);
      mazda.calculateCost();
    }
  }
  void calculateCost({double? x=0, double? y=0, double? z=0})
  {
    print('The cost is $x \$ with out options For MercedesBenz ');
    cost=x!;
    print('Do you want Air Conditioner ($y \$ Extra per day) 1-Yes 2-NO');
    airConditioner = stdin.readLineSync()!;
    airConditioner == '1' ?  cost += y! : cost ;
    print('Do you want Gps ($z \$ Extra per day) 1-Yes 2-NO');
    gps = stdin.readLineSync()!;
    gps == '1' ?  cost += z! : cost ;
    print('MotionVector  1-Auto 2-Manual');
    stdin.readLineSync()!;
    print('How many days will you rent the car?');
    days=int.parse(stdin.readLineSync()!);
    cost *=days!;
    print('---------------------------------------------');
    if (type == '1') {
      print(
          'The total cost is $cost for $days Days ,We wish you a happy experience');
    } else if (type == '2') {
      print('You are vip client 15% OFF ');
      cost *= 0.85;
      print('The total cost is $cost for $days Days ,We wish you a happy experience');
    }
  }

}
