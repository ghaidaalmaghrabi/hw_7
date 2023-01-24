import 'package:flutter/material.dart';
import 'package:hw_7/pages/home2.dart';
import 'package:hw_7/pages/profile.dart';

class home extends StatelessWidget {
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
                  const Text(
                    'Breakfast',
                    style: TextStyle(
                      fontSize: 24,
                      color: Color(0xff1B463C),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      final navigator = Navigator.of(context);
                      navigator.push(
                        MaterialPageRoute(
                          builder: (context) => home2(),
                        ),
                      );
                    },
                    child: const Text(
                      'Lunch',
                      style: TextStyle(
                        fontSize: 24,
                        color: Color(0xff5B5F53),
                      ),
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
              imageUrl: 'https://i.pinimg.com/564x/5b/36/8c/5b368cfb5ef0ff7d5b9bb0edb0b66200.jpg',
              productDescription: 'Blueberry Asai',
              price: '45 SR',
            ),
            const SizedBox(
              height: 32,
            ),
            const BreakfastCard(
              imageUrl: 'https://i.pinimg.com/564x/9e/85/8f/9e858fb838e7db48f8544ce06a534ec6.jpg',
              productDescription: 'Pesto Eggs',
              price: '35 SR',
            ),
            const SizedBox(
              height: 32,
            ),
            const BreakfastCard(
              imageUrl: 'https://i.pinimg.com/564x/0b/6a/69/0b6a69c876d0155f099ddaa9d26172ea.jpg',
              productDescription: 'Banana Pancakes',
              price: '30 SR',
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
