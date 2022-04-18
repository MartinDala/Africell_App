import 'package:africell_app/util/custom_webviews.dart';
import 'package:flutter/material.dart';

class RechargeScreen extends StatefulWidget {
  const RechargeScreen({Key? key}) : super(key: key);

  @override
  State<RechargeScreen> createState() => _RechargeScreenState();
}

class _RechargeScreenState extends State<RechargeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: CustomRechargeWebView());
  }
}
