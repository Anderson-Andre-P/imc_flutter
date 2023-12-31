import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

class DrawerFooterView extends StatelessWidget {
  const DrawerFooterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text(
                "Feito com o  ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Icon(
                FontAwesomeIcons.solidHeart,
                color: Colors.red,
                size: 10,
              ),
              Text(
                "  por",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.0,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          Text(""),
          GestureDetector(
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 20.0,
                  backgroundImage: AssetImage("assets/images/icon.png"),
                ),
                Text(
                  " Anderson\n André",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            onTap: () async {
              const url = 'https://nividata.com';
              if (await canLaunchUrlString(url)) {
                await launchUrlString(
                  url,
                  mode: LaunchMode.externalApplication,
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
