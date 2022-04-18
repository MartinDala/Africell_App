import 'package:africell_app/util/custom_webviews.dart';
import 'package:flutter/material.dart';

class InternetScreen extends StatefulWidget {
  const InternetScreen({Key? key}) : super(key: key);

  @override
  State<InternetScreen> createState() => _InternetScreenState();
}

class _InternetScreenState extends State<InternetScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: CustomInternetWebView());
  }
}
