import 'package:flutter/material.dart';
import 'package:t_grow/app/app_colors.dart';
import 'package:webview_flutter/webview_flutter.dart';
class WebViewContainer extends StatefulWidget {
  const WebViewContainer({super.key});

  @override
  State<WebViewContainer> createState() => _WebViewContainerState();
}

class _WebViewContainerState extends State<WebViewContainer> {
   final controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
   ..loadRequest(Uri.parse('https://udify.app/chat/RJBUPvoHap55xsZw'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.greenColor,
      ),
body:SafeArea(
child: WebViewWidget(controller: controller,

),
),
    );
  }
}
