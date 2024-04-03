import 'package:demo_app/components/User/UserAppBar.dart';
import 'package:demo_app/components/User/UserBody.dart';

import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(children: [UserAppBar(), UserBody()]));
  }
}
