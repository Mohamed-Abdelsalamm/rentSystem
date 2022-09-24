import 'dart:io';
import 'cars.dart';

class MercedesBenz extends Cars {
  MercedesBenz({
    String? airConditioner,
    String? gps,
    String? model,
    String? motionVector,
    int? days,
    double cost = 0,
    String? type,
  }) : super(
            airConditioner: airConditioner,
            gps: gps,
            model: model,
            motionVector: motionVector,
            days: days,
            cost: cost,
            type: type);

  @override
  void calculateCost({double? x = 700, double? y = 70, double? z = 40}) {
    print('The cost is $x \$ with out options For MercedesBenz ');
    cost = x!;
    print('Do you want Air Conditioner ($y \$ Extra per day) 1-Yes 2-NO');
    airConditioner = stdin.readLineSync()!;
    airConditioner == '1' ? cost += y! : cost;
    print('Do you want Gps ($z \$ Extra per day) 1-Yes 2-NO');
    gps = stdin.readLineSync()!;
    gps == '1' ? cost += z! : cost;
    print('MotionVector  1-Auto 2-Manual');
    stdin.readLineSync()!;
    print('How many days will you rent the car?');
    days = int.parse(stdin.readLineSync()!);
    cost *= days!;
    print('---------------------------------------------');
    if (type == '1') {
      print(
          'The total cost is $cost for $days Days ,We wish you a happy experience');
    } else if (type == '2') {
      cost *= 0.85;
      print('You are vip client 15% OFF ');
      print('The total cost is $cost for $days Days ,We wish you a happy experience');
    }
  }
}
