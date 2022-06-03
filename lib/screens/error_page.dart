import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Error'),
      ),
      body: Center(
        child: Text(
          'Sayfa Bulunamadı',
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
    );
  }
}
