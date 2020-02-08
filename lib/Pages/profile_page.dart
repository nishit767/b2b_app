import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Profile'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {},
            color: Colors.white,
          )
        ],
      ),
      body: ProfileView(),
    );
  }
}

class ProfileView extends StatelessWidget {
  const ProfileView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.blue, Colors.red]),
      ),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.account_circle,
              color: Colors.white,
            ),
            onPressed: () {},
            iconSize: 100,
          ),
          Center(
            child: InkWell(
              onTap: () {},
              child: Container(
                height: 20,
                width: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white),
                ),
                child: Center(
                    child: Text(
                  'Add photo',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
            child: Text(
              'Your Name',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.0,
              ),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {},
              leading: Icon(
                Icons.account_circle,
                size: 30,
              ),
              title: Text(
                'Username',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
            child: Text(
              'Mobile Number',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.0,
              ),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {},
              leading: Icon(
                Icons.phone,
                size: 30,
              ),
              title: Text(
                'XXXXXXXXXX',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
            child: Text(
              'Email ID',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {},
              leading: Icon(
                Icons.mail,
                size: 30,
              ),
              title: Text(
                'user_id@gmail.com',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
            child: Text(
              'Account security',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {},
              title: Text(
                'LOG OUT FROM ALL DEVICES',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.blue,
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
          ),
        ],
      ),
    );
  }
}
