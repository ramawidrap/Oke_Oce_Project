import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oke_oce_app/utils/constant.dart';
import 'package:oke_oce_app/widget/custom_text_field.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RegisterPage();
  }
}

class _RegisterPage extends State<RegisterPage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            appBar: AppBar(
              leading: BackButton(
                color: Colors.black,
              ),
              title: Text('Daftar di Waroenk', 
                textAlign: TextAlign.left,
                style: (TextStyle(color: Colors.black))
              ),
              backgroundColor: Colors.white,
              centerTitle: false,
            ),
            backgroundColor: Theme.of(context).backgroundColor,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: EdgeInsets.only(top: 80, left: 30, right: 30),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              CustomTextField(
                                hint: "Nama Lengkap",
                                label: "Nama Lengkap",
                              ),
                              CustomTextField(
                                hint: "Email",
                                label: "Email",
                              ),
                              CustomTextField(
                                hint: "Nomor Telepon",
                                label: "Nomor Telepon",
                              ),
                              CustomTextField(
                                hint: "Password",
                                label: "Password",
                              ),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 1,
                                    child: RaisedButton(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(color: Theme.of(context).accentColor),
                                        borderRadius: BorderRadius.circular(10)
                                      ),
                                      color: Theme.of(context).accentColor,
                                      onPressed: () {},
                                      child: Text(
                                        "Daftar",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ),
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
            )
        )
    );
  }
}
