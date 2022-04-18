import 'package:africell_app/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CustomRechargeWebView extends StatelessWidget {
  const CustomRechargeWebView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: const WebView(
        initialUrl: URLsWebView.URL_RECHARGE,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}

class CustomMapWebView extends StatelessWidget {
  const CustomMapWebView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: const WebView(
        initialUrl: URLsWebView.URL_MAP_FOUND_SHOP,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}

class CustomCarreiraWebView extends StatelessWidget {
  const CustomCarreiraWebView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: const WebView(
        initialUrl: URLsWebView.URL_CAERER,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}

class CustomInternetWebView extends StatelessWidget {
  const CustomInternetWebView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: const WebView(
        initialUrl: URLsWebView.URL_INTERNET_PLANS,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}

class CustomPlansWebView extends StatelessWidget {
  const CustomPlansWebView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: const WebView(
        initialUrl: URLsWebView.URL_PLANS,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}

class CustomSuportWebView extends StatelessWidget {
  const CustomSuportWebView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: const WebView(
        initialUrl: URLsWebView.URL_SUPORT,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
