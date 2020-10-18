
import 'package:esprit_ebook_app/widgets/profile_avatar.dart';
import 'package:esprit_ebook_app/widgets/profile_setting_dialog.dart';
import 'package:flutter/material.dart';

class ProfilScreen extends StatefulWidget {
  @override
  _ProfilScreenState createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SingleChildScrollView(
              padding: EdgeInsets.symmetric(vertical: 7),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Text(
                                "SaifEddine Rhouma",
                                textAlign: TextAlign.left,
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                "x199103@gmail.com",
                                style: Theme.of(context).textTheme.caption,
                              )
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                        ),
                        SizedBox(
                            width: 55,
                            height: 55,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(300),
                              onTap: () {
                                Navigator.of(context).pushNamed('/Profile');
                              },
                              child: CircleAvatar(
                                backgroundImage: NetworkImage("http://www.restaurant-latrattoria.com/mrl/public/images/image_default.png"),
                              ),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [BoxShadow(color: Theme.of(context).hintColor.withOpacity(0.15), offset: Offset(0, 3), blurRadius: 10)],
                    ),
                    child: ListView(
                      shrinkWrap: true,
                      primary: false,
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.person),
                          title: Text(
                           "Profile Settings",
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          trailing: ButtonTheme(
                            padding: EdgeInsets.all(0),
                            minWidth: 50.0,
                            height: 25.0,
                            child: ProfileSettingsDialog(
                              onChanged: () {
                                //setState(() {});
                              },
                            ),
                          ),
                        ),
                        ListTile(
                          onTap: () {},
                          dense: true,
                          title: Text(
                            "Full Name",
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                          trailing: Text(
                            "SaifEddine Rhouma",
                            style: TextStyle(color: Theme.of(context).focusColor),
                          ),
                        ),
                        ListTile(
                          onTap: () {},
                          dense: true,
                          title: Text(
                           "Email",
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                          trailing: Text(
                            "x199103@gmail.com",
                            style: TextStyle(color: Theme.of(context).focusColor),
                          ),
                        ),
                        ListTile(
                          onTap: () {},
                          dense: true,
                          title: Text(
                            "Phone",
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                          trailing: Text(
                            "93 414 888",
                            style: TextStyle(color: Theme.of(context).focusColor),
                          ),
                        ),
                        ListTile(
                          onTap: () {},
                          dense: true,
                          title: Text(
                            "Address",
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                          trailing: Text(
                           "currentUser.value.",
                            overflow: TextOverflow.fade,
                            softWrap: false,
                            style: TextStyle(color: Theme.of(context).focusColor),
                          ),
                        ),
                        ListTile(
                          onTap: () {},
                          dense: true,
                          title: Text(
                            "About",
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                          trailing: Text(
                            "Helper.limitString",
                            overflow: TextOverflow.fade,
                            softWrap: false,
                            style: TextStyle(color: Theme.of(context).focusColor),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [BoxShadow(color: Theme.of(context).hintColor.withOpacity(0.15), offset: Offset(0, 3), blurRadius: 10)],
                    ),
                    child: ListView(
                      shrinkWrap: true,
                      primary: false,
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.settings),
                          title: Text(
                            "Application Settings",
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                        ListTile(
                          onTap: () {
                          },
                          dense: true,
                          title: Row(
                            children: <Widget>[
                              Icon(
                                Icons.translate,
                                size: 22,
                                color: Theme.of(context).focusColor,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Languages',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ],
                          ),
                          trailing: Text(
                            "english",
                            style: TextStyle(color: Theme.of(context).focusColor),
                          ),
                        ),
                        ListTile(
                          onTap: () {
                          },
                          dense: true,
                          title: Row(
                            children: <Widget>[
                              Icon(
                                Icons.place,
                                size: 22,
                                color: Theme.of(context).focusColor,
                              ),
                              SizedBox(width: 10),
                              Text(
                               'Delivery Addresses',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
