import 'package:flutter/material.dart';
import 'package:flutter_gamer_ui/ui/screens/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.of(context).pushReplacement(PageRouteBuilder(
          transitionDuration: const Duration(seconds: 1),
          pageBuilder: (context, animation, _) {
            return FadeTransition(
              opacity: animation,
              child: const HomeScreen(),
            );
          },
        ));
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -size.height * 0.10,
            right: -size.height * 0.15,
            child: TweenAnimationBuilder(
              duration: const Duration(milliseconds: 350),
              curve: Curves.ease,
              tween: Tween<double>(begin: 0, end: 1),
              builder: (context, value, _) {
                return AnimatedContainer(
                  height: value * size.height * 0.3,
                  width: value * size.height * 0.3,
                  duration: const Duration(milliseconds: 400),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          Color.fromARGB(255, 255, 17, 0),
                          Color.fromARGB(255, 0, 140, 255)
                        ]),
                    shape: BoxShape.circle,
                  ),
                );
              },
            ),
          ),
          Positioned(
            bottom: -size.height * 0.10,
            left: -size.height * 0.15,
            child: TweenAnimationBuilder(
              duration: const Duration(milliseconds: 350),
              curve: Curves.ease,
              tween: Tween<double>(begin: 0, end: 1),
              builder: (context, value, _) {
                return AnimatedContainer(
                  height: value * size.height * 0.3,
                  width: value * size.height * 0.3,
                  duration: const Duration(milliseconds: 400),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color.fromARGB(255, 255, 17, 0),
                          Color.fromARGB(255, 0, 140, 255)
                        ]),
                    shape: BoxShape.circle,
                  ),
                );
              },
            ),
          ),
          Positioned(
            top: size.height * 0.35,
            left: 20,
            right: 20,
            child: TweenAnimationBuilder(
              duration: const Duration(milliseconds: 1500),
              tween: Tween<double>(begin: 1.0, end: 0.0),
              curve: Curves.ease,
              builder: (context, value, _) {
                return Transform.translate(
                  offset: Offset(0, -300 * value),
                  child: const Column(
                    children: [
                      CircleAvatar(
                        radius: 100,
                        backgroundColor: Colors.transparent,
                        child: Hero(
                          tag: 'logo',
                          child: Image(
                            image: AssetImage('assets/image/logo_gamer.png'),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Sony Gamer',
                        style: TextStyle(
                            color: Color.fromARGB(255, 67, 73, 149),
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
