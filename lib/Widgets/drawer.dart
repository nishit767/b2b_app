import 'package:b2b_app/Models/User.dart';
import 'package:b2b_app/locator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NavDrawer extends StatefulWidget {
  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    var user = Provider.of<User>(context);
    return SizedBox(
        width: 250.0,
        child: Drawer(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.blue, Colors.red]),
            ),
            child: Transform.scale(
              scale: 0.97,
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.all(5),
                children: <Widget>[
                  //header
                  UserAccountsDrawerHeader(
                    onDetailsPressed: () {
                      Navigator.pushNamed(context, '/profile');
                      },
                    accountName: Text('Username'),
                    accountEmail: Text(user.emailId),
                    currentAccountPicture: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/profile');
                      },
                      icon: Icon(
                        Icons.account_circle,
                        color: Colors.white,
                      ),
                      iconSize: 70,
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 0),
                    ),
                  ),

                  //body
                  InkWell(
                    onTap: () {},
                    child: ListTile(
                      leading: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Home',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.yellow[500],
                  ),
                  InkWell(
                    onTap: () {},
                    child: ListTile(
                      leading: Icon(
                        Icons.assignment_turned_in,
                        color: Colors.white,
                      ),
                      title: Text(
                        'My Orders',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.yellow[500],
                  ),
                  InkWell(
                    onTap: () {},
                    child: ListTile(
                      leading: Icon(
                        Icons.assignment_return,
                        color: Colors.white,
                      ),
                      title: Text(
                        'My Returns',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.yellow[500],
                  ),
                  InkWell(
                    onTap: () {},
                    child: ListTile(
                      leading: Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      ),
                      title: Text(
                        'My Cart',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.yellow[500],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/notif');
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Notifications',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.yellow[500],
                  ),
                  InkWell(
                    onTap: () {},
                    child: ListTile(
                      leading: Icon(
                        Icons.business_center,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Sell on app',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  Divider(
                    color: Colors.yellow[500],
                  ),

                  InkWell(
                    onTap: () {},
                    child: ListTile(
                      leading: Icon(
                        Icons.assignment,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Legal ',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.yellow[500],
                  ),
                  InkWell(
                    onTap: () {},
                    child: ListTile(
                      leading: Icon(
                        Icons.help_outline,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Help Centre',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.yellow[500],
                  ),
                  InkWell(
                    onTap: () {},
                    child: ListTile(
                      leading: Icon(
                        Icons.chat,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Chats',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.yellow[500],
                  ),
                  InkWell(
                    onTap: () {},
                    child: ListTile(
                      leading: Icon(
                        Icons.info,
                        color: Colors.white,
                      ),
                      title: Text(
                        'About ',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ), Divider(
                    color: Colors.yellow[500],
                  ),
                  InkWell(
                    onTap: () {
//                      user.isValidUser=user.isValidPass=false;
//                      user.userName=user.password=null;
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white),
                      ),
                      child: Center(
                        child: Text(
                          "Logout",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ));
  }
}
