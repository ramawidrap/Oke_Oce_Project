import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oke_oce_app/utils/constant.dart';
import 'package:oke_oce_app/widget/custom_text_field.dart';
import 'package:oke_oce_app/ui/page/dashboard_page.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPage();
  }
}

class _LoginPage extends State<LoginPage> {
  static const JUDUL = "Waroenk";
  static const DESKRIPSI =
      "Bangkitkan ekonomi keraykatan agar dapat berdiri di kaki sendiri";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.only(top: 30, left: 30, right: 30),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          Text(JUDUL,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headline1),
                          Container(
                            alignment: Alignment.center,
                            child: Text(DESKRIPSI),
                          ),
                          Container(
                            height: 10,
                          ),
                          Expanded(
                            flex: 1,
                            child: SvgPicture.asset(
                              K.PATH_LOGO_UMKM,
                              width: 100,
                              height: 100,
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            child: Text("Masuk"),
                            padding: EdgeInsets.all(25),
                          ),
                          CustomTextField(
                            hint: "Email",
                            label: "Email",
                          ),
                          CustomTextField(
                            hint: "Password",
                            label: "Password",
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Lupa Password ?",
                              style: Theme.of(context).textTheme.button,
                            ),
                          ),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: RaisedButton(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(color: Theme.of(context).accentColor,width: 3)),
                                    color: Colors.white,
                                    onPressed: () {},
                                    child: Text("Daftar")),
                              ),
                              Divider(
                                indent: 30,
                              ),
                              Expanded(
                                flex: 1,
                                child: RaisedButton(
                                    shape: RoundedRectangleBorder(side: BorderSide(color: Theme.of(context).accentColor),borderRadius: BorderRadius.circular(10)),
                                    color: Theme.of(context).accentColor,
                                    onPressed: () {
                                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => DashboardPage()));
                                    },
                                    child: Text(
                                      "Masuk",
                                      style: TextStyle(color: Colors.white),
                                    )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: SvgPicture.asset(
                K.PATH_BACKGROUND,
                width: 999,
                height: 999,
              ),
            )
          ],
        ));
  }
}
