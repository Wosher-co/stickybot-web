import 'package:flutter/material.dart';
import 'package:stickybotweb/pages/home.dart';
import 'package:stickybotweb/pages/referal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    String myurl = Uri.base.toString();
    String? referalCode = Uri.base.queryParameters["ref"];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: referalCode == null
          ? HomePage()
          : ReferalPage(
              refCode: referalCode,
            ),
    );
  }
}
