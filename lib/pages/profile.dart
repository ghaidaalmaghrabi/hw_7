import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F3E8),
      appBar: AppBar(
        backgroundColor: const Color(0xff40A791),
        title: const Text(
          'Profile',
          style: TextStyle(fontSize: 30),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.account_circle_rounded,
              color: Color(0xffffffff),
              size: 32,
            ),
            onPressed: () {
              final navigator = Navigator.of(context);
              navigator.push(
                MaterialPageRoute(
                  builder: (context) => profile(),
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'Calculate your calories',
            style: TextStyle(color: Color(0xff40A791), fontSize: 30),
          ),
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: 'enter your height',
            ),
          ),
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: 'enter your weight',
            ),
          ),
        ],
      ),
    );
  }
}
