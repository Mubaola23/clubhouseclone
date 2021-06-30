import 'package:flutter/material.dart';

class NavBarItem {
  NavBarItem({this.iconData, this.text});
  IconData iconData;
  String text;
}

class NavBar extends StatefulWidget {
  NavBar({
    this.items,
    this.height: 60.0,
    this.iconSize: 24.0,
    this.backgroundColor,
    this.color,
    this.selectedColor,
    this.onTabSelected,
  }) {
    assert(this.items.length == 2 || this.items.length == 3);
  }
  final List<NavBarItem> items;
  final double height;
  final double iconSize;
  final Color backgroundColor;
  final Color color;
  final Color selectedColor;
  final ValueChanged<int> onTabSelected;

  @override
  State<StatefulWidget> createState() => NavBarState();
}

class NavBarState extends State<NavBar> {
  int _selectedIndex = 1;

  _updateIndex(int index) {
    widget.onTabSelected(index);

    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> items = List.generate(widget.items.length, (int index) {
      return _buildTabItem(
        item: widget.items[index],
        index: index,
        onPressed: _updateIndex,
      );
    });

    return ClipRRect(
      child: BottomAppBar(
        color: widget.backgroundColor,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: items,
        ),
      ),
    );
  }

  Widget _buildTabItem({
    NavBarItem item,
    int index,
    ValueChanged<int> onPressed,
  }) {
    Color color = _selectedIndex == index ? widget.selectedColor : widget.color;
    Color color1 =
        _selectedIndex == index ? Color(0xff5D60EF) : Colors.transparent;
    Color color2 =
        _selectedIndex == index ? Colors.transparent : Color(0xffEDEFFF);
    return Expanded(
      child: SizedBox(
        height: widget.height,
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: () => onPressed(index),
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              decoration: BoxDecoration(
                color: color1,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: color2,
                    child: Icon(
                      item.iconData,
                      color: color,
                      size: 20,
                    ),
                  ),
                  Text(
                    item.text,
                    style: TextStyle(color: color, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
