import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Global {
  static int OKE_OCE_MAIN_COLOR = 0xff008ECC;
  static int OKE_OCE_WHITE_COLOR = 0xFFFFFFFF;
  static int OKE_OCE_GREY_C4C4C4 = 0xFFAAAAAA;

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
}
