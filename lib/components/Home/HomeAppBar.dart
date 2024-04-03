import 'package:demo_app/conf/const.dart';
import "package:flutter/material.dart";
import 'package:badges/badges.dart' as badges;

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: customWhite,
      leading: const Padding(
        padding: EdgeInsets.only(left: 10),
        child: Row(
          children: [
            Icon(
              Icons.location_on,
              size: 25,
              color: customBrown,
            ),
            Text(
              "HCM City, Vietnam",
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: customOrange),
            ),
          ],
        ),
      ),
      leadingWidth: 160,
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: badges.Badge(
            badgeStyle: const badges.BadgeStyle(
              badgeColor: Colors.red,
              padding: EdgeInsets.all(7),
            ),
            badgeContent: const Text(
              "0",
              style: TextStyle(color: Colors.white),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "cart");
              },
              child: const Icon(
                Icons.shopping_cart_outlined,
                color: customBrown,
                size: 25,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
