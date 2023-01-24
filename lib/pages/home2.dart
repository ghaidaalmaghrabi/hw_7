import 'package:flutter/material.dart';
import 'package:hw_7/pages/home.dart';
import 'package:hw_7/pages/profile.dart';

class home2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F3E8),
      appBar: AppBar(
        backgroundColor: const Color(0xff40A791),
        title: const Text(
          'HealthyFood',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      final navigator = Navigator.of(context);
                      navigator.push(
                        MaterialPageRoute(
                          builder: (context) => home(),
                        ),
                      );
                    },
                    child: const Text(
                      'Breakfast',
                      style: TextStyle(
                        fontSize: 24,
                        color: Color(0xff5B5F53),
                      ),
                    ),
                  ),
                  const Text(
                    'Lunch',
                    style: TextStyle(
                      fontSize: 24,
                      color: Color(0xff1B463C),
                    ),
                  ),
                  const Text(
                    'Dinner',
                    style: TextStyle(
                      fontSize: 24,
                      color: Color(0xff5B5F53),
                    ),
                  ),
                  const Divider(
                    height: 32,
                    color: Colors.grey,
                    thickness: 2,
                  ),
                ],
              ),
            ),
            const BreakfastCard(
              imageUrl: 'https://i.pinimg.com/564x/3c/88/ad/3c88adc58d4ef481fa9312efb57c7124.jpg',
              productDescription: 'Beef with broccoli',
              price: '65 SR',
            ),
            const SizedBox(
              height: 32,
            ),
            const BreakfastCard(
              imageUrl: 'https://i.pinimg.com/564x/11/05/a6/1105a6612a50ee91ad66521b8f710d8c.jpg',
              productDescription: 'Grilled Salmon',
              price: '90 SR',
            ),
            const SizedBox(
              height: 32,
            ),
            const BreakfastCard(
              imageUrl: 'https://i.pinimg.com/564x/76/07/c6/7607c6ecd522d58bc34d764e2848c346.jpg',
              productDescription: 'Grilled chicken',
              price: '55 SR',
            ),
            const SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}

class BreakfastCard extends StatelessWidget {
  const BreakfastCard({Key? key, required this.imageUrl, required this.productDescription, required this.price})
      : super(key: key);
  final String imageUrl;
  final String productDescription;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            Image(
              image: NetworkImage(
                imageUrl,
              ),
              width: 300,
              height: 300,
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              productDescription,
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              price,
              style: const TextStyle(
                fontSize: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
