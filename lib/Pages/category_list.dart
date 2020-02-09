import 'package:flutter/material.dart';

class CategoryListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.add_shopping_cart)),
        ],
        backgroundColor: Colors.blue[700],
        title: ListTile(
            leading: Icon(
              Icons.shop,
              color: Colors.white,
            ),
            title: Text(
              'Shoes',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            )),
      ),
      body: ProductCard(),
    );
  }
}

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(5, 10, 0, 0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            child: Text(
              'Feature Product in Shoes :',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            height: 300,
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                ListView(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(
                          bottom: 20,
                        ),
                        child: Container(
                          width: 250,
                          height: 350,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [Colors.red[100], Colors.red]),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0, 8),
                                blurRadius: 8,
                              )
                            ],
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                left: 20,
                                top: 20,
                                child: Text(
                                  '01',
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.black.withOpacity(0.6),
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 40,
                                    bottom: 25,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'NIKE 1',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                      Text(
                                        'RS.1499',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 80,
                                left: 20,
                                child: Image.network(
                                  'https://github.com/devefy/Flutter-Adidas-Shoes-Ecommerce-App-UI/blob/master/assets/adidas.png?raw=true',
                                  width: 220,
                                  height: 170,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(30, 0, 20, 0),
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(
                          bottom: 20,
                        ),
                        child: Container(
                          width: 250,
                          height: 350,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [Colors.blue[100], Colors.blue]),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0, 8),
                                blurRadius: 8,
                              )
                            ],
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                left: 20,
                                top: 20,
                                child: Text(
                                  '02',
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.black.withOpacity(0.6),
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 40,
                                    bottom: 25,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'NIKE 1',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                      Text(
                                        'RS.1499',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 45,
                                left: 20,
                                child: Image.network(
                                  'https://github.com/iampawan/FUI01-NikeWebFlutter/blob/master/assets/images/shoe.png?raw=true',
                                  width: 220,
                                  height: 170,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                  scrollDirection: Axis.horizontal,
                ),
              ],
            ),
          ),
          Container(
            child: Text(
              'Most sold products :',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Container(
            height: 150,
            child: Stack(
              children: <Widget>[
                ListView(scrollDirection: Axis.horizontal, children: <Widget>[
                  Container(
                    width: 1000,
                    margin: EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 10,
                    ),
                    padding: EdgeInsets.only(
                      top: 5,
                      left: 40,
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Colors.red[100], Colors.red]),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, 8),
                          blurRadius: 8,
                        )
                      ],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image.network(
                          'https://github.com/iampawan/FUI01-NikeWebFlutter/blob/master/assets/images/shoe.png?raw=true',
                          width: 120,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          width: 20,
                        ),
                        Image.network(
                          'https://github.com/iampawan/FUI01-NikeWebFlutter/blob/master/assets/images/shoe.png?raw=true',
                          width: 120,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          width: 20,
                        ),
                        Container(
                          width: 20,
                        ),
                        Image.network(
                          'https://github.com/iampawan/FUI01-NikeWebFlutter/blob/master/assets/images/shoe.png?raw=true',
                          width: 120,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          width: 20,
                        ),
                        Image.network(
                          'https://github.com/iampawan/FUI01-NikeWebFlutter/blob/master/assets/images/shoe.png?raw=true',
                          width: 120,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          width: 20,
                        ),
                        Image.network(
                          'https://github.com/iampawan/FUI01-NikeWebFlutter/blob/master/assets/images/shoe.png?raw=true',
                          width: 120,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          width: 20,
                        ),
                        Image.network(
                          'https://github.com/iampawan/FUI01-NikeWebFlutter/blob/master/assets/images/shoe.png?raw=true',
                          width: 120,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ]),
              ],
            ),
          ),
          Container(
            child: Text(
              'More products :',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          MessageListTile(),
          MessageListTile(),
          MessageListTile(),
          MessageListTile(),
        ],
      ),
    );
  }
}

class MessageListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      child: Card(
        color: Colors.pink[100],
        //margin: EdgeInsets.only(left: 30, right: 30),
        elevation: 16,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.verified_user),
                    Text('Verified'),
                  ],
                ),
                Container(
                  height: 10,
                ),
                Image.network(
                  'https://images-na.ssl-images-amazon.com/images/I/81gsfOB5FPL._UL1500_.jpg',
                  height: 75,
                  width: 100,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  color: Colors.grey[400],
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Text('4.1Seller Ratings',
                      style: TextStyle(
                        fontSize: 11,
                      )),
                ),
                Container(
                  width: 200,
                  child: Text("Adidas Men's Asweerun Running Shoes",
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ),
                Row(children: <Widget>[
                  Text(
                    'Nike',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Container(
                    width: 160,
                  ),
                  Icon(Icons.favorite)
                ]),
                Row(
                  children: <Widget>[
                    Text(
                      'RS.1499',
                      style: TextStyle(
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 80),
                        child: Icon(Icons.add_shopping_cart)),
                    Text('Add to Cart'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star_border),
                    Padding(
                      padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                      child: Text(
                        '1500+ sold',
                        style: TextStyle(
                          color: Colors.yellow[200],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(145, 0, 0, 0),
                  child: Text('FREE Delivery'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
