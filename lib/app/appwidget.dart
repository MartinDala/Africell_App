import 'package:africell_app/views/caerer/caerer.dart';
import 'package:africell_app/views/home/home_screen.dart';
import 'package:africell_app/views/internet/internet.dart';
import 'package:africell_app/views/login/login_screen.dart';
import 'package:africell_app/views/plans/plans.dart';
import 'package:africell_app/views/recharge/recharge.dart';
import 'package:africell_app/views/shop/shop.dart';
import 'package:africell_app/views/splash/splash_screen.dart';
import 'package:africell_app/views/suport/suport.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Africell App",
      initialRoute: "/splash",
      routes: {
        '/splash': (_) => const SplashScreen(),
        '/login': (_) => const LoginScreen(),
        '/home': (_) => const HomeScreen(),
        '/recharge': (_) => const RechargeScreen(),
        '/shop': (_) => const ShopScreen(),
        '/internet': (_) => const InternetScreen(),
        '/plans': (_) => const PlanScreen(),
        '/caerer': (_) => const CaererScreen(),
        '/suport': (_) => const SuportScreen(),
      },
    );
  }
}
