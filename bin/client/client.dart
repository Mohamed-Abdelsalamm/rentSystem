import 'dart:io';

import '../cars/cars.dart';

class Client {
  String? user;
  String? phoneNumber;
  String? clientType;

  Client({
    this.user,
    this.phoneNumber,
    this.clientType,
  }) {
    print(' welcome to Magic store 😀');
    print(' please enter your name ');
    user = stdin.readLineSync()!;
    print(' please enter your phone number');
    phoneNumber = stdin.readLineSync()!;
    print(' please enter your type (1-Normal OR 2-Vip)');
    clientType = stdin.readLineSync()!;
    print(' How can I help you mr$user ? \n 1-Rent a car\n 2-Ask question\n 3-send feedback\n 4-Make a complaint\n');
    String x = stdin.readLineSync()!;
    var cars = Cars(type: '$clientType');
    x == '1' ?  cars.choseCar() : null ;
    x == '2' ?  askQuestion() : null ;
    x == '3' ?  sendFeedback() : null ;
    x == '4' ?  makeComplaint() : null ;

  }

  void askQuestion() {
    print('Enter Your question.');
    String? question = stdin.readLineSync()!;
    print('our team will contact you as soon as possible , Thank you !');
  }

  void sendFeedback() {
    print('Enter Your Feedback');
    String? feedback = stdin.readLineSync()!;
    print('Thank You, We are glad to serve you 😀');
  }

  void makeComplaint() {
    print('Enter Your Complaint ,our team will contact you as soon as possible');
    String? complaint = stdin.readLineSync()!;
    print('Thank You');

  }



}
