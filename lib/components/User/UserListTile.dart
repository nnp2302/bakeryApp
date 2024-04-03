
import 'package:flutter/material.dart';

class UserListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final dynamic url;

  const UserListTile(
      {Key? key, required this.icon, required this.title, required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return url;
            }));
          },
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            horizontalTitleGap: 25,
            leading: Icon(
              icon,
              size: 28,
            ),
            title: Text(
              title,
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ),
        const Divider()
      ],
    );
  }
}
