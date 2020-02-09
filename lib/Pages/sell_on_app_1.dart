import 'package:flutter/material.dart';

class SellCategoryPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select a category'),
      ),
      body: Row(children: <Widget>[
        Expanded(
          flex: 5,
          child: Column(children: <Widget>[
            Expanded(
                flex: 25,
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/sellform');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[700])),
                      child: Align(
                        alignment: Alignment.center,
                        child: Column(children: <Widget>[
                          SizedBox(height: 10),
                          Container(
                            padding: const EdgeInsets.all(8),
                            child: IconButton(
                              icon: Icon(Icons.phone_android),
                              onPressed: () {},
                            ),
                          ),
                          Text('Phones'),
                        ]),
                      ),
                    ))),
            Expanded(
                flex: 25,
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/sellform');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[700])),
                      child: Align(
                        alignment: Alignment.center,
                        child: Column(children: <Widget>[
                          SizedBox(height: 10),
                          Container(
                            padding: const EdgeInsets.all(8),
                            child: IconButton(
                              icon: Icon(Icons.book),
                              onPressed: () {},
                            ),
                          ),
                          Text('Books'),
                        ]),
                      ),
                    ))),
            Expanded(
                flex: 25,
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/sellform');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[700])),
                      child: Align(
                        alignment: Alignment.center,
                        child: Column(children: <Widget>[
                          SizedBox(height: 10),
                          Container(
                            padding: const EdgeInsets.all(8),
                            child: IconButton(
                              icon: Icon(Icons.laptop),
                              onPressed: () {},
                            ),
                          ),
                          Text('Electronics'),
                        ]),
                      ),
                    ))),
            Expanded(
                flex: 25,
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/sellform');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[700])),
                      child: Align(
                        alignment: Alignment.center,
                        child: Column(children: <Widget>[
                          SizedBox(height: 10),
                          Container(
                            padding: const EdgeInsets.all(8),
                            child: IconButton(
                              icon: Icon(Icons.drive_eta),
                              onPressed: () {},
                            ),
                          ),
                          Text('Cars'),
                        ]),
                      ),
                    ))),
          ]),
        ),
        Expanded(
          flex: 5,
          child: Column(children: <Widget>[
            Expanded(
                flex: 25,
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/sellform');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[700])),
                      child: Align(
                        alignment: Alignment.center,
                        child: Column(children: <Widget>[
                          SizedBox(height: 10),
                          Container(
                            padding: const EdgeInsets.all(8),
                            child: IconButton(
                              icon: Icon(Icons.phone_android),
                              onPressed: () {},
                            ),
                          ),
                          Text('Phones'),
                        ]),
                      ),
                    ))),
            Expanded(
                flex: 25,
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/sellform');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[700])),
                      child: Align(
                        alignment: Alignment.center,
                        child: Column(children: <Widget>[
                          SizedBox(height: 10),
                          Container(
                            padding: const EdgeInsets.all(8),
                            child: IconButton(
                              icon: Icon(Icons.book),
                              onPressed: () {},
                            ),
                          ),
                          Text('Books'),
                        ]),
                      ),
                    ))),
            Expanded(
                flex: 25,
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/sellform');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[700])),
                      child: Align(
                        alignment: Alignment.center,
                        child: Column(children: <Widget>[
                          SizedBox(height: 10),
                          Container(
                            padding: const EdgeInsets.all(8),
                            child: IconButton(
                              icon: Icon(Icons.laptop),
                              onPressed: () {},
                            ),
                          ),
                          Text('Electronics'),
                        ]),
                      ),
                    ))),
            Expanded(
                flex: 25,
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/sellform');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[700])),
                      child: Align(
                        alignment: Alignment.center,
                        child: Column(children: <Widget>[
                          SizedBox(height: 10),
                          Container(
                            padding: const EdgeInsets.all(8),
                            child: IconButton(
                              icon: Icon(Icons.drive_eta),
                              onPressed: () {},
                            ),
                          ),
                          Text('Cars'),
                        ]),
                      ),
                    ))),
          ]),
        ),
      ]),
    );
  }
}
