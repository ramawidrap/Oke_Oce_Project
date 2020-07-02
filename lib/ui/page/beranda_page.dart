import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oke_oce_app/ui/page/all_waroenk_categories.dart';

import '../../Global.dart';

class Beranda extends StatelessWidget {
  static final List<String> imgSlider = [
    'image1.jpg',
    'image2.jpg',
    'image3.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.only(left: 17.0, right: 17.0),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 11),
                child: Global.getWaroenkCarouselImage(imgSlider),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(top: 18.0),
                  child: Text(
                    "Kategori",
                    textAlign: TextAlign.left,
                    style: Global.getCustomFont(
                        Global.OKE_OCE_BLACK, 16, 'bold'),
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 11, top: 12),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 40, bottom: 7),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {},
                                  child: Global.getCardCategoryWaroenk(
                                      "food.svg"),
                                ),
                                Global.getCategoryTextFormat("Makanan")
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 40, bottom: 7),
                            child: Column(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {},
                                  child: Global.getCardCategoryWaroenk(
                                      "drink.svg"),
                                ),
                                Global.getCategoryTextFormat("Minuman")
                              ],
                            ),),
                          Container(
                            margin: EdgeInsets.only(right: 40, bottom: 7),
                            child: Column(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {},
                                  child: Global.getCardCategoryWaroenk(
                                      "HasilAlam.svg"),
                                ),
                                Global.getCategoryTextFormat("Hasil Alam")
                              ],
                            ),),
                          Container(
                            margin: EdgeInsets.only(bottom: 7),
                            child: Column(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {},
                                  child: Global.getCardCategoryWaroenk(
                                      "pakaian.svg"),
                                ),
                                Global.getCategoryTextFormat("Pakaian")
                              ],
                            ),)
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 40, bottom: 7),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {},
                                  child: Global.getCardCategoryWaroenk(
                                      "interior.svg"),
                                ),
                                Global.getCategoryTextFormat("Interior \n Rumah")
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 40, bottom: 7),
                            child: Column(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {},
                                  child: Global.getCardCategoryWaroenk(
                                      "medical.svg"),
                                ),
                                Global.getCategoryTextFormat("Kesehatan")
                              ],
                            ),),
                          Container(
                            margin: EdgeInsets.only(right: 40, bottom: 7),
                            child: Column(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {},
                                  child: Global.getCardCategoryWaroenk(
                                      "jasa.svg"),
                                ),
                                Global.getCategoryTextFormat("Jasa")
                              ],
                            ),),
                          Container(
                            margin: EdgeInsets.only(bottom: 7),
                            child: Column(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => AllWaroenkCategory()));
                                  },
                                  child: Global.getCardCategoryWaroenk(
                                      "add.svg"),
                                ),
                                Global.getCategoryTextFormat("Lainnya")
                              ],
                            ),)
                        ],
                      )
                      ,
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(top: 18.0),
                  child: Text(
                    "Agenda",
                    textAlign: TextAlign.left,
                    style: Global.getCustomFont(
                        Global.OKE_OCE_BLACK, 16, 'bold'),
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 14),
                    child: SvgPicture.asset('assets/images/line.svg',
                      fit: BoxFit.cover,),

                  ),
                  Text("Didukung Oleh:", style: Global.getCustomFont(Global.OKE_OCE_GREY_C4C4C4, 14, 'normal'),),
                  Container(
                    margin: EdgeInsets.only(left: 14),
                    child: SvgPicture.asset('assets/images/line.svg',
                      fit: BoxFit.cover,),

                  )
                ],
              ),
              Container(
                child: Image.asset('assets/images/bri.jpg',
                  fit: BoxFit.cover,),

              )
            ],
          ),
        ));
  }
}
