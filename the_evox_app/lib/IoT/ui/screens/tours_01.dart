import 'package:flutter/material.dart';
import 'package:the_evox_app/screens.dart';
import 'package:the_evox_app/widgets.dart';

class Tours01 extends StatelessWidget {
  const Tours01({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
          body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              height: 110,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.fromLTRB(50, 60, 0, 0),
              child: Image.asset(
                'assets/images/logo_01.png',
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: Image.asset(
                'assets/images/tours_living_01.png',
                fit: BoxFit.contain,
                alignment: Alignment.topRight,
              ),
            ),
            const SizedBox(height: 25),
            Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  borderRadius: BorderRadius.circular(30)),
              alignment: Alignment.center,
              child: const Text(
                'Functionality',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Smarter life with',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
            ),
            const Text(
              'smart device',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 40.0,
                    height: 3.0,
                    color: Colors.pinkAccent,
                  ),
                  const SizedBox(width: 5.0),
                  Container(
                    width: 15.0,
                    height: 3.0,
                    color: Colors.black12,
                  ),
                  const SizedBox(width: 5.0),
                  Container(
                    width: 15.0,
                    height: 3.0,
                    color: Colors.black12,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            BlackButton(
              onPressed: () =>
                  {Navigator.of(context).push(_createRoute(const Tours02()))},
              text: 'Next',
            ),
            const SizedBox(height: 10.0),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.pinkAccent,
              ),
              child: const Text(
                'Skip',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () => {
                Navigator.pushReplacementNamed(context, 'login'),
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ));
}

Route _createRoute(Widget screen) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => screen,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}