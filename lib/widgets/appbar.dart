import 'package:flutter/material.dart';

class McdoAppBar extends StatelessWidget implements PreferredSizeWidget {
  const McdoAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(90);

  @override
  Widget build(BuildContext context) {
    final TextStyle appBarTextStyle = TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.red[800],
      fontFamily: "Roboto",
    );
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      toolbarHeight: 200,
      title: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/mcdo_logo.png', width: 150),
            SizedBox(width: 10),
            Text('Home', style: appBarTextStyle),
            SizedBox(width: 20),
            Text('About us', style: appBarTextStyle),
            SizedBox(width: 20),
            Text('Family Activities', style: appBarTextStyle),
            SizedBox(width: 20),
            Text('McDelivery', style: appBarTextStyle),
            SizedBox(width: 20),
            Text('Careers', style: appBarTextStyle),
            SizedBox(width: 20),
            Text('Opportunities', style: appBarTextStyle),
            SizedBox(width: 35),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu, color: Colors.red[900], size: 40),
            ),
          ],
        ),
      ),
    );
  }
}
