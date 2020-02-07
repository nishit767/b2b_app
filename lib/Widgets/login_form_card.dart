import 'package:b2b_app/Models/User.dart';
import 'package:b2b_app/Shared/app_style.dart';
import 'package:b2b_app/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class FormCard extends StatefulWidget {
  FormCard(
    this.isSignIn, {
    Key key,
  }) : super(key: key);
  bool isSignIn;

  @override
  _FormCardState createState() => _FormCardState();
}

class _FormCardState extends State<FormCard> {
  bool isDoneEditing1 = false;
  bool isDoneEditing2 = false;
  bool isDoneEditing3 = false;
  bool isDoneEditing4 = false;
  bool isDoneEditing5 = false;

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();

    User user = Provider.of<User>(context);

    print(widget.isSignIn);

    return Form(
      key: formKey,
      child: Card(
        elevation: 0.5,
        child: AnimatedSwitcher(
          duration: Duration(milliseconds: 3800),
          child: widget.isSignIn
              ? Column(
            key: ValueKey(1),
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                        top: 20,
                        bottom: 10,
                        left: 10,
                      ),
                      child: Text('Username', style: AppStyle.loginPageStyle),
                    ),
                    Container(
                      height: 40,
                      child: TextFormField(
                        validator: (v) {
                          if (user.userName != null && user.userName == v)
                            user.setUserStat(true);
                          print(v.toString());
                          if (v.isEmpty) return 'Username cannot be Empty!';
                          if (!user.isValidUser) return 'Wrong Username';
                          return null;
                        },
//                      onSaved: (v) {
//                        user.setUserName(v);
//                        setState(() {
//                          isDoneEditing1 = !isDoneEditing1;
//                        });
//                      },
//              suffix: Icon(
//                Icons.check_circle_outline,
//                color: isDoneEditing ? Colors.green : Colors.red,
//              ),
//              suffixMode: OverlayVisibilityMode.always,
                        decoration: InputDecoration(
                            labelText: 'Enter your Username',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.green,
                              ),
                            )),
//              clearButtonMode: isDoneEditing
//                  ? OverlayVisibilityMode.never
//                  : OverlayVisibilityMode.editing,
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(
                          top: 20,
                          bottom: 10,
                          left: 10,
                        ),
                        child: Text(
                          'Password',
                          style: AppStyle.loginPageStyle,
                        )),
                    Container(
                      height: 40,
                      child: TextFormField(
                          validator: (v) {
                            if (user.password != null && user.password == v)
                              user.setPassStat(true);

                            if (v.isEmpty) return 'Password cannot be Empty!';
                            if (!user.isValidPass) return 'Wrong Password';
                            if (!user.isValidPass && !user.isValidUser)
                              return 'Wrong Username and Password combination!';
                            return null;
                          },
//                        onSaved: (v) {},
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: 'Enter your Password',

                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.green,
                                  )))),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 100),
                          height: 70,
                          child: Transform.scale(
                            scale: 0.6,
                            child: CupertinoButton(
                              borderRadius: BorderRadius.circular(20),
                              child: Text(
                                'Log In',
                                style: AppStyle.headingStyle2,
                              ),
                              color: Colors.blue,
                              onPressed: () {
                                final form = formKey.currentState;
                                if (form.validate()) {
                                  form.save();
                                  Scaffold.of(context).showSnackBar(SnackBar(
                                      content: Text('Logging you in ')));
                                }
//                                Navigator.pushReplacement(
//                                    context,
//                                    MaterialPageRoute(
//                                        builder: (context) => MyAppScaffold()));
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              : Column(
            key: ValueKey(2),
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                        top: 30,
                        bottom: 10,
                        left: 10,
                      ),
                      child: Text(
                        'Email-ID',
                        style: AppStyle.loginPageStyle,
                      ),
                    ),
                    Container(
                      height: 40,
                      child: TextFormField(
                          validator: (v) {
                            if (v.isEmpty) return 'E-mail cannot be Empty!';
                            return null;
                          },
                          onSaved: (v) {
                            user.setEmail(v);
                          },
                          decoration: InputDecoration(
                              labelText: 'Enter an E-mail',

                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.green,
                                  )))),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 15,
                        bottom: 10,
                        left: 10,
                      ),
                      child: Text(
                        'Username',
                        style: AppStyle.loginPageStyle,
                      ),
                    ),
                    Container(
                      height: 40,
                      child: TextFormField(
                          validator: (v) {
                            if (v.isEmpty) return 'Username cannot be Empty!';
                            return null;
                          },
                          onSaved: (v) {
                            user.setUserName(v);
                          },
                          decoration: InputDecoration(
                              labelText: 'Enter an Username',
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.green,
                                  )))),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 15,
                        bottom: 10,
                        left: 10,
                      ),
                      child: Text(
                        'Password',
                        style: AppStyle.loginPageStyle,
                      ),
                    ),
                    Container(
                      height: 40,
                      child: TextFormField(
                          validator: (v) {
                            if (v.isEmpty) return 'Password cannot be Empty!';
                            return null;
                          },
                          onSaved: (v) {
                            user.setPassword(v);
                          },

                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: 'Enter an Password (Alphanumeric)',

                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.green,
                                  )))),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 100),
                      height: 70,
                      child: Transform.scale(
                        scale: 0.6,
                        child: CupertinoButton(
                          borderRadius: BorderRadius.circular(20),
                          child: Text(
                            'Log In',
                            style: AppStyle.headingStyle2,
                          ),
                          color: Colors.blue,
                          onPressed: () {
                            final form = formKey.currentState;
                            if (form.validate()) {
                              form.save();
                              Scaffold.of(context).showSnackBar(
                                  SnackBar(content: Text('Signing you up')));
                            }
//                                Navigator.pushReplacement(
//                                    context,
//                                    MaterialPageRoute(
//                                        builder: (context) => MyAppScaffold()));
                          },
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
