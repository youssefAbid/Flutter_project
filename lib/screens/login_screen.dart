import 'package:esprit_ebook_app/constants.dart';
import 'package:esprit_ebook_app/screens/home_screen.dart';
import 'package:esprit_ebook_app/widgets/rounded_button.dart';
import 'package:esprit_ebook_app/widgets/two_side_rounded_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData _queryData = MediaQuery.of(context);
    double _height = _queryData.size.height / 100.0;
    double _width = _queryData.size.width / 100.0;

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Bitmap.png"),
            fit: BoxFit.fill,
          ),
        ),
        child:
            Stack(alignment: AlignmentDirectional.topCenter, children: <Widget>[
              /*
          Positioned(
            top: 0,
            child: Container(
              width: (_width * 100),
              height: (_height * 37),
              // decoration: BoxDecoration(color: Theme.of(context).accentColor),
            ),
          ),
          Positioned(
            top: (_height * 37) - 120,
            child: Container(
              width: (_width * 84),
              height: (_height * 37),
              child:
                  // Text(
                  //  'Lets Start With Login',
                  // )
                  RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.display1,
                  children: [
                    TextSpan(
                      text: "Lets Start With",
                    ),
                    TextSpan(
                      text: " Login",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: (_height * 37) - 20,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 50,
                      color: Theme.of(context).hintColor.withOpacity(0.2),
                    )
                  ]),
              margin: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              padding:
                  EdgeInsets.only(top: 50, right: 27, left: 27, bottom: 20),
              width: (_width * 88),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle:
                            TextStyle(color: kProgressIndicator),
                        contentPadding: EdgeInsets.all(12),
                        hintText: 'johndoe@gmail.com',
                        hintStyle: TextStyle(
                            color:
                                Theme.of(context).focusColor.withOpacity(0.7)),
                        prefixIcon: Icon(Icons.alternate_email,
                            color: kProgressIndicator),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: kProgressIndicator
                                    .withOpacity(0.2))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: kProgressIndicator
                                    .withOpacity(0.5))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: kProgressIndicator
                                    .withOpacity(0.2))),
                      ),
                    ),
                    SizedBox(height: 30),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle:
                            TextStyle(color: kProgressIndicator),
                        contentPadding: EdgeInsets.all(12),
                        hintText: '••••••••••••',
                        hintStyle: TextStyle(
                            color:
                                Theme.of(context).focusColor.withOpacity(0.7)),
                        prefixIcon: Icon(Icons.lock_outline,
                            color: kProgressIndicator),
                        suffixIcon: IconButton(
                          onPressed: () {},
                          color: Theme.of(context).focusColor,
                          icon: Icon(Icons.visibility_off),
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: kProgressIndicator
                                    .withOpacity(0.2))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: kProgressIndicator
                                    .withOpacity(0.5))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: kProgressIndicator
                                    .withOpacity(0.2))),
                      ),
                    ),
                    SizedBox(height: 30),
                    RoundedButton(
                      text: "Login Now...",
                     color: kBlackColor,
                      textColor: Colors.white,
                      fontSize: 20,
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return HomeScreen();
                            },
                          ),
                        );
                      },
                    ),

                    SizedBox(height: 15),
                    FlatButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed('/Pages', arguments: 2);
                      },
                      shape: StadiumBorder(),
                      textColor: Theme.of(context).hintColor,
                      child: Text("Skip"),
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 14),
                    ),
                    //Spacer(),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: TwoSideRoundedButton(
                            text: "Read",
                          ),
                        )
                      ],
                    )
//                      SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ),

          */
              Positioned(
                top: 0,
                child: Container(
                  width: (_width * 100),
                  height: (_height * 37),
                  // decoration: BoxDecoration(color: Theme.of(context).accentColor),
                ),
              ),
              Positioned(
                top: (_height * 37) - 160,
                child: Container(
                  width: (_width * 84),
                  height: (_height * 37),
                  child:
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.display1,
                      children: [
                        TextSpan(
                          text: "Lets Start With",
                        ),
                        TextSpan(
                          text: " Login!",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),



              Positioned(
                top: (_height * 37) - 80,
                child: Container(
                  margin: EdgeInsets.only(left: 24,right: 24, bottom: 40),
                  height: 345,
                  width: 313,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(29),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 33,
                                color: kShadowColor,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        child: Form(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(height: 50),
                              TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  labelText: "Email",
                                  labelStyle:
                                  TextStyle(color: kProgressIndicator),
                                  contentPadding: EdgeInsets.all(12),
                                  hintText: 'johndoe@gmail.com',
                                  hintStyle: TextStyle(
                                      color:
                                      Theme.of(context).focusColor.withOpacity(0.7)),
                                  prefixIcon: Icon(Icons.alternate_email,
                                      color: kProgressIndicator),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: kProgressIndicator
                                              .withOpacity(0.2))),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: kProgressIndicator
                                              .withOpacity(0.5))),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: kProgressIndicator
                                              .withOpacity(0.2))),
                                ),
                              ),
                              SizedBox(height: 30),
                              TextFormField(
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  labelText: "Password",
                                  labelStyle:
                                  TextStyle(color: kProgressIndicator),
                                  contentPadding: EdgeInsets.all(12),
                                  hintText: '••••••••••••',
                                  hintStyle: TextStyle(
                                      color:
                                      Theme.of(context).focusColor.withOpacity(0.7)),
                                  prefixIcon: Icon(Icons.lock_outline,
                                      color: kProgressIndicator),
                                  suffixIcon: IconButton(
                                    onPressed: () {},
                                    color: Theme.of(context).focusColor,
                                    icon: Icon(Icons.visibility_off),
                                  ),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: kProgressIndicator
                                              .withOpacity(0.2))),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: kProgressIndicator
                                              .withOpacity(0.5))),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: kProgressIndicator
                                              .withOpacity(0.2))),
                                ),
                              ),
                              SizedBox(height: 30),
                              FlatButton(
                                onPressed: () {

                                },
                                shape: StadiumBorder(),
                                textColor: Colors.white,
                                child: Text("Login"),
                                color: kProgressIndicator,
                                padding:
                                EdgeInsets.symmetric(horizontal: 30, vertical: 14),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Positioned(
                        top: 260,
                        child: Container(
                          height: 85,
                          width: 312,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Spacer(),
                              Row(
                                children: <Widget>[
                                  Spacer(),
                                  Expanded(
                                    child: TwoSideRoundedButton(
                                      text: "Skip",
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
        ]),
      ),
    );
  }
}