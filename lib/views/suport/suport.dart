import 'package:africell_app/util/custom_webviews.dart';
import 'package:flutter/material.dart';

class SuportScreen extends StatefulWidget {
  const SuportScreen({Key? key}) : super(key: key);

  @override
  State<SuportScreen> createState() => _SuportScreenState();
}

class _SuportScreenState extends State<SuportScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: CustomSuportWebView());
  }
}
