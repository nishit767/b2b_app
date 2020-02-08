import 'package:b2b_app/Widgets/ChatPageWidgets/favourite_sellers.dart';
import 'package:b2b_app/Widgets/ChatPageWidgets/recent_chats.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:b2b_app/Shared/random_color_gen.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  int tabpos = 0;

  @override
  Widget build(BuildContext context) {
    var colorRand = ColorRand();
    return DefaultTabController(
        length: 6,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 25, bottom: 10),
              padding: EdgeInsets.only(left: 10, right: 10),
              child: CupertinoTextField(
                cursorColor: Colors.red,
                placeholder: 'Search here...',
                prefix: Icon(Icons.search),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.green,
                    )),
              ),
            ),
            Container(
                color: colorRand.gencolors.elementAt(tabpos * 10 % 49)
                    .withOpacity(0.15),
                height: 30, child: chatTabBar()),
            Divider(
              thickness: 0.6,
            ),
            FavouriteContacts(),
            RecentChats(),

//            Expanded(
//              child: ListView.separated(
//                  itemCount: colorRand.gencolors.length,
//                  separatorBuilder: (context, index) {
//                    return Divider(
//                      thickness: 2,
//                    );
//                  },
//                  itemBuilder: (context, index) {
//                    return ListTile(
//                      trailing: CircleAvatar(
//                        radius: 20,
//                        backgroundColor:
//                            colorRand.gencolors[index].withOpacity(0.5),
//                      ),
//                      leading: Icon(Icons.supervised_user_circle),
//                      title: Text('User $index'),
//                    );
//                  }),
//            )
          ],
        ));
  }
}

Widget chatTabBar() {
  return TabBar(
    isScrollable: true,
    unselectedLabelColor: Colors.redAccent,
    indicatorSize: TabBarIndicatorSize.tab,
    indicator: BoxDecoration(
        border: Border.all(
            color: Colors.blueGrey, width: 1, style: BorderStyle.solid),
        gradient:
        LinearGradient(colors: [Colors.redAccent, Colors.orangeAccent]),
        borderRadius: BorderRadius.circular(30),
        color: Colors.redAccent),
    tabs: <Widget>[
      Tab(
        text: 'All chats',
      ),
      Tab(
        text: 'Enquiries',
      ),
      Tab(
        text: 'Orders',
      ),
      Tab(
        text: 'Returns',
      ),
      Tab(
        text: 'Groups',
      ),
      Tab(
        text: 'Direct Messages',
      ),
    ],
  );
}
