import 'package:b2b_app/Models/Product.dart';
import 'package:b2b_app/Models/Seller.dart';
import 'package:b2b_app/Models/User.dart';
import 'package:b2b_app/Pages/chat_page.dart';
import 'package:b2b_app/Pages/home_page.dart';
import 'package:b2b_app/Pages/login_page.dart';
import 'package:b2b_app/Pages/notification_page.dart';
import 'package:b2b_app/Widgets/circle_avatar_from_image.dart';
import 'package:b2b_app/Widgets/drawer.dart';
import 'package:b2b_app/Widgets/featured_preview_card.dart';
import 'package:b2b_app/Widgets/popular_circle.dart';
import 'package:b2b_app/Widgets/sponsored_deals.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:fancy_bottom_bar/fancy_bottom_bar.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/chats': (context) => ChatPage(),
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/notif': (context) => NotifPage(),
      },
      title: 'B2B App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF6082B5),
      ),
      home: MultiProvider(providers: [
        ChangeNotifierProvider<User>(
          create: (context) => User(),
        ),
        ChangeNotifierProvider<Seller>(
          create: (context) => Seller(),
        ),
        ChangeNotifierProvider<ProductStore>(
          create: (context) => ProductStore(),
        ),
      ], child: LoginPage()),
    );
  }
}

class MyAppScaffold extends StatefulWidget {
  @override
  _MyAppScaffoldState createState() => _MyAppScaffoldState();
}

class _MyAppScaffoldState extends State<MyAppScaffold> {
  int currentNavTab = 0;
  List<Widget> pages = [HomePage(), ChatPage()];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        resizeToAvoidBottomPadding: true,
        bottomNavigationBar: FancyBottomBar(
          height: 50,
          selectedPosition: currentNavTab,
          indicatorColor: Colors.red,
          selectedColor: Colors.amber,
          onItemSelected: (index) {
            setState(() {
              currentNavTab = index;
            });
          },
          items: [
            FancyBottomItem(title: Text('Home'), icon: Icon(Icons.home)),
            FancyBottomItem(title: Text('Chats'), icon: Icon(Icons.chat)),
            FancyBottomItem(
                title: Text('Shortlist'),
                icon: Icon(Icons.format_list_numbered)),
            FancyBottomItem(
                title: Text('My Profile'), icon: Icon(Icons.account_circle))
          ],
        ),
        drawer: NavDrawer(),
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/notif');
                },
                icon: Icon(Icons.notifications)),
            IconButton(onPressed: null, icon: Icon(Icons.add_shopping_cart)),
          ],
          title: Text('B2B'),
        ),
        body: pages[currentNavTab],
      ),
    );
  }
}
