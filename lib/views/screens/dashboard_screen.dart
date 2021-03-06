import 'dart:ui';

import 'package:flutter/material.dart';

import 'file:///C:/Users/user/Documents/Flutter/clubhouse_clone/lib/core/images.dart';
import 'file:///C:/Users/user/Documents/Flutter/clubhouse_clone/lib/views/screens/happening_now.dart';

import '../../core/constants.dart';

class StartRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F7FD),
      body: SafeArea(
        child: Column(
          children: [
            _header(context),
            Expanded(
              child: Container(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Row(
                          children: [
                            _designRow(context, Color(0xffECEBFB), club1),
                            _designRow(context, Color(0xffF6D9DE), club2),
                            _designRow(context, Color(0xffF1E0D9), club3),
                            _designRow(context, Color(0xffF8D4D7), club4),
                            _designRow(context, Color(0xffF6D9DE), club5),
                            _designRow(context, Color(0xffF1E0D9), club6),
                            _designRow(context, Color(0xffF8D4D7), club1),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: responsive24(context)),
                          child: Text(
                            "Upcoming",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ),
                        _upcoming(context),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: responsive24(context)),
                          child: Text(
                            "Happening now",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ),
                        _happeningNow(context, "startup club", 364, 7, club4,
                            club3, club1),
                        _happeningNow(context, "Dating Game + Shoot shot", 354,
                            9, club5, club4, club6),
                        _happeningNow(context, "startup club", 354, 9, club6,
                            club2, club4)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _happeningNow(
    BuildContext context,
    String text,
    int person,
    int voice,
    String img1,
    String img2,
    String img3,
  ) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HappeningNow(
                title: text,
              ))),
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: responsive16(context), vertical: responsive24(context)),
        margin: EdgeInsets.symmetric(
          horizontal: responsive24(context),
          vertical: responsive16(context),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Text.rich(
              TextSpan(
                  text: text.toUpperCase(),
                  style: TextStyle(
                    fontSize: responsive20(context),
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                        text:
                            "\n\nPitch your start up idea to VCs & top Entrepreneurs.",
                        style: TextStyle(
                          fontSize: responsive16(context),
                          fontWeight: FontWeight.w400,
                          color: Color(0xff878699),
                        )),
                  ]),
            ),
            SizedBox(
              height: responsive10(context),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 8.0),
                      width: MediaQuery.of(context).size.width / 15,
                      height: MediaQuery.of(context).size.width / 15,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Image.asset(img1),
                    ),
                    Container(
                        margin: EdgeInsets.only(right: responsive8(context)),
                        width: MediaQuery.of(context).size.width / 15,
                        height: MediaQuery.of(context).size.width / 15,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset(img2)),
                    Container(
                        margin: EdgeInsets.only(right: responsive8(context)),
                        width: MediaQuery.of(context).size.width / 15,
                        height: MediaQuery.of(context).size.width / 15,
                        decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset(img1))
                  ],
                ),
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: responsive8(context)),
                  padding: EdgeInsets.symmetric(
                      horizontal: responsive16(context),
                      vertical: responsive6(context)),
                  decoration: BoxDecoration(
                    color: Color(0xffEFF0F5),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                        size: 15,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "$person",
                        style: TextStyle(fontSize: responsive12(context)),
                      ),
                      Icon(
                        Icons.mic_none,
                        size: responsive14(context),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "$voice",
                        style: TextStyle(fontSize: responsive12(context)),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _upcoming(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: responsive16(context),
        vertical: responsive28(context),
      ),
      margin: EdgeInsets.symmetric(
        horizontal: responsive24(context),
        vertical: responsive16(context),
      ),
      decoration: BoxDecoration(
        color: Color(0xff5D60EF),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        children: [
          Container(
            width: 3,
            height: 40,
            color: Color(0xffEC978A),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 30,
          ),
          Text.rich(
            TextSpan(
                text: "10:00-20:00\n",
                style:
                    TextStyle(fontWeight: FontWeight.w100, color: Colors.white),
                children: [
                  TextSpan(
                      text: "Design talks And Chill",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: responsive20(context),
                          color: Colors.white)),
                ]),
          ),
          Expanded(
              child: Icon(
            Icons.arrow_drop_down,
            color: Colors.white,
          )),
        ],
      ),
    );
  }

  Widget _designRow(BuildContext context, Color color, String img) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: responsive8(context)),
      padding: EdgeInsets.symmetric(
          horizontal: responsive16(context), vertical: responsive6(context)),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        children: [
          Image.asset(
            img,
            width: MediaQuery.of(context).size.width / 20,
          ),
          SizedBox(
            width: 4,
          ),
          Text(
            "Design",
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }

  Widget _header(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Good Morning! \nBernice',
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: responsive24(context)),
          ),
          Row(
            children: [
              Icon(Icons.search),
              CircleAvatar(
                child: Image.asset(
                  club1,
                  width: MediaQuery.of(context).size.width / 15,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
