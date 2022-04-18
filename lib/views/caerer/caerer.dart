import 'package:africell_app/util/custom_webviews.dart';
import 'package:flutter/material.dart';

class CaererScreen extends StatefulWidget {
  const CaererScreen({Key? key}) : super(key: key);

  @override
  State<CaererScreen> createState() => _CaererScreenState();
}

class _CaererScreenState extends State<CaererScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: CustomCarreiraWebView());
  }
}
