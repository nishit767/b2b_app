import 'package:flutter/material.dart';

class SellOnAppForm extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Details'),
        ),
        body: Form(
            child: Container(
                margin: const EdgeInsets.only(left: 30.0, right: 30.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 20),
                      TextFormField(
                          decoration: const InputDecoration(
                        hintText: 'Brand',
                      )),
                      SizedBox(height: 20),
                      TextFormField(
                          decoration: const InputDecoration(
                        hintText: 'Year',
                      )),
                      SizedBox(height: 20),
                      TextFormField(
                          decoration: const InputDecoration(
                        hintText: 'Model',
                      )),
                      SizedBox(height: 30),
                      Text('Add Title'),
                      TextFormField(
                          decoration: const InputDecoration(
                        hintText: '',
                      )),
                      SizedBox(height: 30),
                      Text('Describe what you are selling'),
                      TextFormField(
                          decoration: const InputDecoration(
                        hintText: '',
                      )),
                    ]))));
  }
}
