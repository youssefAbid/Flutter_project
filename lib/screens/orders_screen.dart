import 'package:esprit_ebook_app/constants.dart';
import 'package:esprit_ebook_app/widgets/book_rating.dart';
import 'package:esprit_ebook_app/widgets/two_side_rounded_button.dart';
import 'package:flutter/material.dart';

class OrdersScreen extends StatefulWidget {
  @override
  _OrdersScreenState createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Bitmap.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 10, top: 20),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(vertical: 0),
                leading: Icon(
                  Icons.book,
                  color: Theme.of(context).hintColor,
                ),
                title: Text(
                  'My Books Orders',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headline5,
                ),
                subtitle: Text(
                  "Check And Read your Books That you Own",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.caption,
                ),
              ),
            ),
            Flexible(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: myBookCard(size, context),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: myBookCard(size, context),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: myBookCard(size, context),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }


  Container myBookCard(Size size, BuildContext context) {
    return Container(
      //margin: EdgeInsets.symmetric(vertical: 5),
      width: double.infinity,
      height: 185,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: 24,
                top: 24,
                right: size.width * .35,
              ),
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFEAEAEA).withOpacity(.7),
                borderRadius: BorderRadius.circular(29),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "How To Win \nFriends &  Influence",
                    style: Theme.of(context).textTheme.title,
                  ),
                  Text(
                    "Gary Venchuk",
                    style: TextStyle(color: kLightBlackColor),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              "assets/images/book-3.png",
              width: size.width * .37,
            ),
          ),

          Positioned(
            bottom: 0,
            left: 10,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(38.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment:
                        MainAxisAlignment.end,
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: <Widget>[
                          Align(
                            alignment:
                            Alignment.bottomRight,
                            child: Text(
                              "Chapter 8 of 10",
                              style: TextStyle(
                                fontSize: 10,
                                color: kLightBlackColor,
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 7,
                    width: size.width * .80,
                    decoration: BoxDecoration(
                      color: kProgressIndicator,
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 40,
              width: size.width * .3,
              child: TwoSideRoundedButton(
                text: "Read",
                radious: 24,
                press: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }




}