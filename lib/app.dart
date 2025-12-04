// import 'package:flower_delivery_app/screens/loginpage_screen.dart';
// import 'package:flower_delivery_app/screens/registerpage_screen.dart';
// import 'package:flower_delivery_app/screens/Discoverflower_screen.dart';
import 'package:flower_delivery_app/screens/fastflowerdelivery_screeen.dart';
// import 'package:flower_delivery_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:FastDeliveryPage()
     );
  }
}