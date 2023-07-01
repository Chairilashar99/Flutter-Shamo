import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Widget header
    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: false,
        title: Row(
          children: [
            Image.asset(
              'assets/image_shop_logo_online.png',
              width: 50,
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Shoe Store',
                  style: primaryTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 14,
                  ),
                ),
                Text(
                  'Online',
                  style: secondaryTextStyle.copyWith(
                    fontWeight: light,
                    fontSize: 14,
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    //Widget Chat Input
    Widget chatInput() {
      return Container(
        margin: EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 45,
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                    color: backgroundColor4,
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: TextFormField(
                    decoration: InputDecoration.collapsed(
                      hintText: 'Type message...',
                      hintStyle: subtitleTextStyle,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Image.asset(
              'assets/button_send.png',
              width: 45,
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      bottomNavigationBar: chatInput(),
    );
  }
}
