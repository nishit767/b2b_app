import 'package:b2b_app/Pages/home_page.dart';
import 'package:b2b_app/Shared/app_style.dart';
import 'package:b2b_app/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int currentTab;
  bool isSignIn = true;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomPadding: true,
        backgroundColor: Colors.white,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Positioned(
              left: 100,
              top: 0,
              child: Image.asset(
                'images/login-top.jpg',
                height: 300,
                width: 300,
              ),
            ),
            Positioned(
              top: 100,
              left: 0,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        width: 10,
                      ),
                      Icon(Icons.unfold_more),
                      Container(
                        width: 10,
                      ),
                      Text(
                        'B2B App',
                        style: AppStyle.loginPageStyle,
                      ),
                      Container(
                        width: 70,
                      ),
                      Container(
                        height: 50,
                        width: 200,
                        child: TabBar(
                          isScrollable: false,
                          onTap: (index) {
                            setState(() {
                              currentTab = index;
                              isSignIn = currentTab == 0;
                            });
                          },
//                          labelColor: Colors.white,
//                          indicatorColor: Colors.white,
                          tabs: <Widget>[
                            Tab(
                              child: Text(
                                'Sign In',
                                style: AppStyle.loginPageStyle,
                              ),
//                              text: 'Sign In',
                            ),
                            Tab(
                              child: Text(
                                'Sign Up',
                                style: AppStyle.loginPageStyle,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 100,
                  ),
                  Container(
                    height: 400,
                    width: 300,
                    child: GestureDetector(
                      child: TabBarView(
                        physics: BouncingScrollPhysics(),
                        children: <Widget>[
                          FormCard(
                            currentTab,
                          ),
                          FormCard(
                            currentTab,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                top: 180,
                left: 20,
                child: AnimatedSwitcher(
                  duration: Duration(milliseconds: 1100),
                  reverseDuration: Duration(milliseconds: 200),
                  child: isSignIn
                      ? Text(
                    'Welcome Back',
                    key: ValueKey(1),
                    style: TextStyle(fontSize: 30, color: Colors.green),
                  )
                      : Text(
                    'Create an Account',
                    key: ValueKey(2),
                    style: TextStyle(fontSize: 30, color: Colors.green),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class FormCard extends StatelessWidget {
  FormCard(this.currentTab, {
    Key key,
  }) : super(key: key);
  int currentTab;
  bool isSignIn;

  @override
  Widget build(BuildContext context) {
    isSignIn = currentTab == 0;
    print(isSignIn);

    return Card(
      elevation: 0.5,
      child: isSignIn
          ? Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
            child: Text('Username', style: AppStyle.loginPageStyle),
          ),
          CupertinoTextField(
            suffix: Icon(
              Icons.check_circle_outline,
              color: Colors.red,
            ),
            suffixMode: OverlayVisibilityMode.notEditing,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.green,
                ),
                borderRadius: BorderRadius.circular(20)),
            clearButtonMode: OverlayVisibilityMode.editing,
            placeholder: 'Enter your Username',
          ),
          Container(child: Text('Password')),
          CupertinoTextField(
            obscureText: true,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.green,
                ),
                borderRadius: BorderRadius.circular(20)),
            clearButtonMode: OverlayVisibilityMode.editing,
            placeholder: 'Enter your Password',
          ),
          CupertinoButton(
            child: Text('Log In'),
            color: Colors.blue,
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyAppScaffold()));
            },
          )
        ],
      )
          : Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Username'),
          CupertinoTextField(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.green,
                ),
                borderRadius: BorderRadius.circular(20)),
            clearButtonMode: OverlayVisibilityMode.editing,
            placeholder: 'Enter your Username',
          ),
          Text(
            'Password',
            style: AppStyle.loginPageStyle,
          ),
          CupertinoTextField(
            obscureText: true,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.green,
                ),
                borderRadius: BorderRadius.circular(20)),
            clearButtonMode: OverlayVisibilityMode.editing,
            placeholder: 'Enter your Password (AlphaNumeric)',
          ),
        ],
      ),
    );
  }
}
