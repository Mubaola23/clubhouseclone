import 'package:flutter/material.dart';

//colors
const kPrimaryColor = Color(0xff5D60EF);
const kWhiteColor = Colors.white;
const kBlackColor = Colors.black;
const kYellowColor = Colors.yellow;
const kRedColor = Colors.red;

/// Texts
TextStyle heading1(BuildContext context) => TextStyle(
      color: kBlackColor,
      fontSize: responsive38(context),
      fontWeight: FontWeight.w600,
    );

TextStyle heading2(BuildContext context) => TextStyle(
      color: kBlackColor,
      fontSize: responsive30(context),
      fontWeight: FontWeight.w600,
    );

TextStyle heading3(BuildContext context) => TextStyle(
      color: kBlackColor,
      fontSize: responsive26(context),
      fontWeight: FontWeight.w400,
    );

TextStyle heading(BuildContext context) => TextStyle(
      fontSize: responsive20(context),
      fontWeight: FontWeight.w700,
    );

TextStyle bodyText(BuildContext context) => TextStyle(
      color: kBlackColor,
      fontSize: responsive16(context),
      fontWeight: FontWeight.w400,
    );

TextStyle subtitle(BuildContext context) => TextStyle(
      color: kBlackColor,
      fontSize: responsive18(context),
      fontWeight: FontWeight.w400,
    );

TextStyle labelText(BuildContext context) => TextStyle(
      color: kBlackColor,
      fontSize: responsive16(context),
      fontWeight: FontWeight.w400,
    );

double responsive4(BuildContext context) =>
    MediaQuery.of(context).size.width / 38;

double responsive6(BuildContext context) =>
    MediaQuery.of(context).size.width / 36;

double responsive8(BuildContext context) =>
    MediaQuery.of(context).size.width / 34;

double responsive10(BuildContext context) =>
    MediaQuery.of(context).size.width / 32;

double responsive12(BuildContext context) =>
    MediaQuery.of(context).size.width / 30;

double responsive14(BuildContext context) =>
    MediaQuery.of(context).size.width / 28;

double responsive16(BuildContext context) =>
    MediaQuery.of(context).size.width / 26;

double responsive18(BuildContext context) =>
    MediaQuery.of(context).size.width / 24;

double responsive20(BuildContext context) =>
    MediaQuery.of(context).size.width / 22;

double responsive22(BuildContext context) =>
    MediaQuery.of(context).size.width / 20;

double responsive24(BuildContext context) =>
    MediaQuery.of(context).size.width / 18;

double responsive26(BuildContext context) =>
    MediaQuery.of(context).size.width / 16;

double responsive28(BuildContext context) =>
    MediaQuery.of(context).size.width / 14;

double responsive30(BuildContext context) =>
    MediaQuery.of(context).size.width / 12;

double responsive32(BuildContext context) =>
    MediaQuery.of(context).size.width / 10;

double responsive36(BuildContext context) =>
    MediaQuery.of(context).size.width / 6;

double responsive38(BuildContext context) =>
    MediaQuery.of(context).size.width / 4;

double responsive50(BuildContext context) =>
    MediaQuery.of(context).size.width / 10;

double responsive100(BuildContext context) =>
    MediaQuery.of(context).size.width / 5;
