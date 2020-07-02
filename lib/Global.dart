import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';



class Global {
  static int OKE_OCE_MAIN_COLOR = 0xff008ECC;
  static int OKE_OCE_WHITE_COLOR = 0xFFFFFFFF;
  static int OKE_OCE_GREY_C4C4C4 = 0xFFAAAAAA;
  static int OKE_OCE_BLACK = 0xFF333333;
  static const PATH_LOGO_UMKM = "assets/images/logo-umkm.svg";
  static const PATH_BACKGROUND = "assets/images/login-background.svg";

  static TextStyle getCustomFont(int color, double fontSize, String fontName) {
    return new TextStyle(
        // set color of text
        color: Color(color),
        // set the font family as defined in pubspec.yaml
        fontFamily: fontName,
        // set the font size
        fontSize: fontSize);
  }

  static Expanded getSearchWaroenkSearchBar() {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Color(OKE_OCE_GREY_C4C4C4),
            borderRadius: BorderRadius.all(Radius.circular(8))

        ),
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: "Cari Produk",
          ),
        ),
      ),
    );
  }

  static CarouselSlider getWaroenkCarouselImage(List<String> imgSlider){
    return CarouselSlider(
      options: CarouselOptions(
          height: 150.0,
          aspectRatio: 2.0),
      items: imgSlider.map((fileImage) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(5.0),
              child: Image.asset('assets/images/${fileImage}',
                width: 10000,
                fit: BoxFit.cover,),

            );
          },
        );
      }).toList(),
    );
  }

  static Card getCardCategoryWaroenk(String imageCard){
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      elevation: 4.0,
      child: Container(
        width: 50.0,
        height: 50.0,
        color: Colors.white,
        padding: EdgeInsets.all(10.0),
        child: SvgPicture.asset(
          'assets/images/category/${imageCard}', fit: BoxFit.cover,
        ),
      ),
    );
  }

  static Card getBiggerCardCategoryWaroenk(String imageCard){
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      elevation: 4.0,
      child: Container(
        width: 67.24,
        height: 67.24,
        color: Colors.white,
        padding: EdgeInsets.all(10.0),
        child: SvgPicture.asset(
          'assets/images/category/${imageCard}', fit: BoxFit.cover,
        ),
      ),
    );
  }
  static Text getBiggerCategoryTextFormat(String textToShown){
    return Text(
      textToShown,
      style: Global.getCustomFont(Global.OKE_OCE_BLACK, 12.0, 'bold'),
    );
  }

  static Text getCategoryTextFormat(String textToShown){
    return Text(
      textToShown,
      style: Global.getCustomFont(Global.OKE_OCE_BLACK, 10.0, 'bold'),
    );
  }

}
