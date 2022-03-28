import 'package:flutter/material.dart';
import 'package:sawdelivery/states/authen.dart';
import 'package:sawdelivery/states/buyer_service.dart';
import 'package:sawdelivery/states/create_account.dart';
import 'package:sawdelivery/states/rider_service.dart';
import 'package:sawdelivery/states/saler_service.dart';
import 'package:sawdelivery/utility/my_constant.dart';


final Map<String, WidgetBuilder> map = {
  '/authen':(BuildContext context)=> Authen(),
  '/createAccount':(BuildContext context) => CreateAccount(),
  '/buyerService':(BuildContext context) => BuyerService(),
  '/salerService':(BuildContext context) => SalerService(),
  '/riderService':(BuildContext context) => RiderService(),
};

String? initlalRoute;

void main(){
  initlalRoute = MyConstant.routerAuthen;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MyConstant.appName,
      routes: map,
      initialRoute: initlalRoute,
      
    );
  }
}