import 'package:b2b_app/Pages/chat_page.dart';
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

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        padding: EdgeInsets.only(bottom: 10),
        children: <Widget>[
          Container(
              height: 90,
              width: 150,
              child: SearchBar()),
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
          getPopularCities(),
          buildBrandsRowContainer(),
          ProductReviewCard(),
          CarouselFeaturedProducts(),
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
