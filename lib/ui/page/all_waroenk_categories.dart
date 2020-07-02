import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Global.dart';

class AllWaroenkCategory extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: new Icon(
              Icons.arrow_back_ios,
              color: Color(Global.OKE_OCE_BLACK),
            ),
            onPressed: (){
              Navigator.pop(context);
            }),
        title: Text("Kategori", style: Global.getCustomFont(Global.OKE_OCE_BLACK, 16, "bold"),),
      ),
      body: Container(
        padding: EdgeInsets.all(23),
        color: new Color(Global.OKE_OCE_WHITE_COLOR),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 14.79),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 53.79),
                    child: Column(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {},
                          child: Global.getBiggerCardCategoryWaroenk(
                              "food.svg"),
                        ),
                        Global.getBiggerCategoryTextFormat("Makanan")
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 53.79),
                    child: Column(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {},
                          child: Global.getBiggerCardCategoryWaroenk(
                              "drink.svg"),
                        ),
                        Global.getBiggerCategoryTextFormat("Minuman")
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {},
                          child: Global.getBiggerCardCategoryWaroenk(
                              "HasilAlam.svg"),
                        ),
                        Global.getBiggerCategoryTextFormat("Hasil Alam")
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 14.79),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 53.79),
                    child: Column(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {},
                          child: Global.getBiggerCardCategoryWaroenk(
                              "pakaian.svg"),
                        ),
                        Global.getBiggerCategoryTextFormat("Pakaian")
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 53.79),
                    child: Column(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {},
                          child: Global.getBiggerCardCategoryWaroenk(
                              "interior.svg"),
                        ),
                        Global.getBiggerCategoryTextFormat("Interior \n Rumah")
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {},
                          child: Global.getBiggerCardCategoryWaroenk(
                              "medical.svg"),
                        ),
                        Global.getBiggerCategoryTextFormat("Kesehatan")
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 14.79),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 53.79),
                    child: Column(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {},
                          child: Global.getBiggerCardCategoryWaroenk(
                              "jasa.svg"),
                        ),
                        Global.getBiggerCategoryTextFormat("Jasa")
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 53.79),
                    child: Column(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {},
                          child: Global.getBiggerCardCategoryWaroenk(
                              "animal.svg"),
                        ),
                        Global.getBiggerCategoryTextFormat("Hewan")
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {},
                          child: Global.getBiggerCardCategoryWaroenk(
                              "bag.svg"),
                        ),
                        Global.getBiggerCategoryTextFormat("Tas & \n Sepatu")
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 14.79),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 53.79),
                    child: Column(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {},
                          child: Global.getBiggerCardCategoryWaroenk(
                              "kerajinan.svg"),
                        ),
                        Global.getBiggerCategoryTextFormat("Kerajinan")
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}