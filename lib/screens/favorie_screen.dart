import 'package:esprit_ebook_app/data_static.dart';
import 'package:esprit_ebook_app/widgets/cart_bottom_details.dart';
import 'package:esprit_ebook_app/widgets/cart_item.dart';
import 'package:esprit_ebook_app/widgets/favorie_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavorieScreen extends StatefulWidget {
  @override
  _FavorieScreenState createState() => _FavorieScreenState();
}

class _FavorieScreenState extends State<FavorieScreen> {
  @override
  Widget build(BuildContext context) {
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
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 10, top: 20),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(vertical: 0),
                leading: Icon(
                  Icons.favorite,
                  color: Theme.of(context).hintColor,
                ),
                title: Text(
                  'Favorite Books',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headline5,
                ),
                subtitle: Text(
                  "Check And Remove your Favorite Books",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.caption,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: ListView.separated(
                padding: EdgeInsets.symmetric(vertical: 15),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                primary: false,
                itemCount: carts.length,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 15);
                },
                itemBuilder: (context, index) {
                  return FavorieItemWidget(
                    cart: carts.elementAt(index),
                    heroTag: 'cart',
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
