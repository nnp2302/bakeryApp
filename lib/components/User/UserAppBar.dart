import 'package:demo_app/conf/const.dart';
import 'package:flutter/material.dart';

class UserAppBar extends StatelessWidget implements PreferredSizeWidget {
  const UserAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: customWhite,
      padding: const EdgeInsets.only(bottom: 30, top: 60, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            defaultUserImage,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          const Text(
            'Username',
            style: TextStyle(fontSize: 26, color: customOrange),
          )
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
