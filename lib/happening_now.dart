import 'package:clubhouseclone/app_textfield.dart';
import 'package:clubhouseclone/images.dart';
import 'package:flutter/material.dart';

class HappeningNow extends StatelessWidget {
  final String title;
  const HappeningNow({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F7FD),
      bottomSheet: BottomSheet(
        onClosing: () {},
        builder: (BuildContext context) => Container(
          height: MediaQuery.of(context).size.height * 0.25,
          decoration: BoxDecoration(
              color: Color(0xff5D60EF),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              )),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                width: MediaQuery.of(context).size.width * 0.22,
                height: 5,
                decoration: BoxDecoration(
                  color: Color(0xFFE0E0E0),
                  borderRadius: BorderRadius.circular(100.0),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 18),
                child: Row(
                  children: [
                    Expanded(
                      child: AppTextField(
                        hintText: 'Type a thougnt here...',
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        borderColor: Colors.green,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 10,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Icon(
                        Icons.send,
                        color: Color(0xff5D60EF),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                    color: Color(0xffF8F7FD),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _designRow(context, Color(0xffEDF0F7), club1),
                      Row(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            margin: EdgeInsets.symmetric(horizontal: 8),
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 8),
                            decoration: BoxDecoration(
                              color: Color(0xffEDF0F7),
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Image.asset(
                              club1,
                              width: MediaQuery.of(context).size.width / 20,
                            ),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 8),
                            decoration: BoxDecoration(
                              color: Color(0xff4E4B67),
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Image.asset(
                              club6,
                              width: MediaQuery.of(context).size.width / 15,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            _header(context),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                scrollDirection: Axis.vertical,
                children: [
                  _callIcon(context, club1, Colors.black, "Sarah"),
                  _callIcon(context, club2, Color(0xffF9D5A1), "Samuel"),
                  _callIcon(context, club3, Color(0xffE8E8E8), "Samaritha"),
                  _callIcon(context, club4, Color(0xffFEEAA2), "Aishat"),
                  _callIcon(context, club5, Color(0xffC3F0C5), "Ruth"),
                  _callIcon(context, club6, Color(0xffF7C9D4), "Racheal"),
                  _callIcon(context, club1, Color(0xffCBEBFD), "Sarah"),
                  _callIcon(context, club4, Color(0xffE8E8E8), "Mercy"),
                  _callIcon(context, club1, Color(0xffDDD3FB), "sarah"),
                  _callIcon(context, club6, Color(0xffFEE9A6), "Adeleke"),
                  _callIcon(context, club5, Color(0xffBDE1BF), "Anna"),
                  _callIcon(context, club3, Color(0xffDED3FB), "Laurette"),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.90,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _designRow(BuildContext context, Color color, String img) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
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
            "Leave quietly",
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }

  Widget _callIcon(
      BuildContext context, String icon, Color color, String name) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(100),
            ),
            clipBehavior: Clip.antiAlias,
            width: MediaQuery.of(context).size.width / 5,
            height: MediaQuery.of(context).size.width / 5,
            child: Image.asset(
              icon,
              width: MediaQuery.of(context).size.width / 10,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: MediaQuery.of(context).size.width / 40,
                child: Icon(
                  Icons.star,
                  size: 15,
                ),
              ),
              Text(name),
            ],
          )
        ],
      ),
    );
  }

  Widget _header(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
      child: Row(
        children: [
          Icon(Icons.arrow_back_ios),
          Container(
            margin:
                EdgeInsets.only(left: MediaQuery.of(context).size.width / 7),
            width: MediaQuery.of(context).size.width / 2,
            child: Text(
              title.toUpperCase(),
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
