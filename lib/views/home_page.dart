import 'package:flutter/material.dart';
import 'package:flutter_login_signup/utils/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.settingsPage);
              },
              icon: const Icon(Icons.settings))
        ],
      ),
      body: Center(
        child: Text(
          'Home Page',
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
    );
  }
}
