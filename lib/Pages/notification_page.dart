import 'package:flutter/material.dart';

class NotifPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        actions: <Widget>[
          IconButton(onPressed: (){}, icon: Icon(Icons.add_shopping_cart)),
        ],
        backgroundColor: Colors.blue[700],
        title: Text('Notifications'),
      ),
      body: Center(
        child: Text('No Notifications'),
      ),
    );
  }
}
