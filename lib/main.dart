import 'package:b2b_app/Shared/app_style.dart';
import 'package:b2b_app/Widgets/featured_preview_card.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:fancy_bottom_bar/fancy_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'B2B App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF6082B5),
      ),
      home: MyAppScaffold(),
    );
  }
}

class MyAppScaffold extends StatefulWidget {
  @override
  _MyAppScaffoldState createState() => _MyAppScaffoldState();
}

class _MyAppScaffoldState extends State<MyAppScaffold> {
  int currentNavTab = 0;

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
            FancyBottomItem(title: Text(''), icon: Icon(Icons.home)),
            FancyBottomItem(title: Text(''), icon: Icon(Icons.home)),
            FancyBottomItem(title: Text(''), icon: Icon(Icons.home)),
            FancyBottomItem(title: Text(''), icon: Icon(Icons.home)),
          ],
        ),
        drawer: Drawer(child: Icon(Icons.add)),
        appBar: AppBar(
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
            IconButton(onPressed: null, icon: Icon(Icons.add_shopping_cart)),
          ],
          title: Text('B2B'),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
//        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(height: 60, child: buildCategoriesList()),
          Container(
              margin: EdgeInsets.symmetric(vertical: 0),
              height: 200,
              width: 300,
              child: Carousel(
                dotSize: 4,
                dotSpacing: 10,
                images: [
                  Image.asset('images/udaan_top.png'),
                  Image.asset('images/carousel_1.jpeg'),
                  Image.asset('images/carousel_2.jpeg')
                ],
              )),
          ProductReviewCard(),
          ProductReviewCard(),
        ],
      ),
    );
  }
}

class buildCategoriesList extends StatelessWidget {
  const buildCategoriesList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
//      padding: EdgeInsets.fromLTRB(10.0, 5.0, 0, 0),
      children: <Widget>[
        getCircularLogo(
            'https://icons-for-free.com/iconfiles/png/512/consumer+electronics-131964735205643930.png'),
        SizedBox(width: 30),
        getCircularLogo(
            'https://cdn3.iconfinder.com/data/icons/country-flags-shirts-geometric-simplification/344/flag-country-shirt-jersey_243-512.png'),
        SizedBox(width: 30),
        getCircularLogo(
            'https://cdn3.iconfinder.com/data/icons/country-flags-shirts-geometric-simplification/344/flag-country-shirt-jersey_243-512.png'),
        SizedBox(width: 30),
        getCircularLogo(
            'https://cdn3.iconfinder.com/data/icons/country-flags-shirts-geometric-simplification/344/flag-country-shirt-jersey_243-512.png'),
        SizedBox(width: 30),
        getCircularLogo(
            'https://cdn2.iconfinder.com/data/icons/smashicons-gastronomy-retro-vol-3/58/140_-_Groceries_gastronomy_food_cooking-512.png'),
        SizedBox(width: 30),
        getCircularLogo(
            'https://icons-for-free.com/iconfiles/png/512/consumer+electronics-131964735205643930.png'),
        SizedBox(width: 30),
        getCircularLogo(
            'https://icons-for-free.com/iconfiles/png/512/consumer+electronics-131964735205643930.png')
      ],
      scrollDirection: Axis.horizontal,
    );
  }
}

Widget getCircularLogo(String url) {
  return Container(
      height: 40.0,
      width: 40.0,
      decoration: new BoxDecoration(
          image: new DecorationImage(
        image: new NetworkImage('$url'),
      )));
}
