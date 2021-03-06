import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Logging You In',
              style: TextStyle(fontSize: 40),
            ),
            Container(
              height: 40,
            ),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
