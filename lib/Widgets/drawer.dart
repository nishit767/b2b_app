import 'package:flutter/material.dart';


class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            child: ListView(
              children: <Widget>[
                //header
                UserAccountsDrawerHeader(
                  accountName: Text('Username'),
                  accountEmail: Text('user_id@gmail.com'),
                  currentAccountPicture: IconButton(
                    onPressed: null,
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
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    leading: Icon(
                      Icons.card_giftcard,
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
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    leading: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Notification ',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
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
                ),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    leading: Icon(
                      Icons.notifications,
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
                InkWell(
                  onTap: () {},
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


    );
  }
}
