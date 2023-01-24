import 'package:flutter/material.dart';
import 'package:hw_7/pages/home.dart';

class start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F3E8),
      body: Column(
        children: [
          Stack(
            children: [
              const Image(
                image: NetworkImage('https://i.pinimg.com/564x/54/2a/82/542a8206e4ad831abaef342c3da020a4.jpg'),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Color(0xff40A791),
                      ],
                    ),
                  ),
                  height: 700,
                  width: 1000,
                ),
              ),
              Positioned(
                bottom: 0,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: const [
                          Text(
                            'Welcome To HealthyFood',
                            style: TextStyle(color: Color(0xff40A791), fontSize: 30),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          Text(
                            'Your perfect choice for healthy meals',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          InkWell(
            onTap: () {
              final navigator = Navigator.of(context);
              navigator.push(
                MaterialPageRoute(
                  builder: (context) => home(),
                ),
              );
            },
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Icon(
                      Icons.dinner_dining,
                      size: 85,
                      color: Color(0xff40A791),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Let Start',
                      style: TextStyle(fontSize: 28),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
