import 'package:flutter/material.dart';
import 'package:flutter_gamer_ui/memory/in_memory_accessories.dart';
import 'package:flutter_gamer_ui/ui/screens/accessories/accessories_details_screen.dart';
import 'package:flutter_gamer_ui/ui/widgets/GlassBox.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final _pageController = PageController(viewportFraction: 0.75);
    double _currentPage = 0.0;

    void _listener() {
      setState(() {
        _currentPage = _pageController.page!;
      });
    }

    @override
    void initState() {
      _pageController.addListener(_listener);
      super.initState();
    }

    @override
    void dispose() {
      _pageController.dispose();
      super.dispose();
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                      const Text(
                        'Sony Gamer',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.shopping_cart)),
                    ],
                  ),
                  const Text(
                    'Accessories',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.red),
                        ),
                        child: const Text('Wireless'),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.red),
                        ),
                        child: const Text(
                          'Console',
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.red),
                        ),
                        child: const Text(
                          'Headset',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: accessories.length,
                clipBehavior: Clip.none,
                physics: const BouncingScrollPhysics(
                    parent: ClampingScrollPhysics()),
                itemBuilder: (context, index) {
                  final listTitle = accessories[index].category.split(' ');
                  return Container(
                    margin: const EdgeInsets.only(top: 20.0, bottom: 50.0),
                    padding: const EdgeInsets.only(right: 50),
                    child: Transform.translate(
                      offset: const Offset(20, 0),
                      child: LayoutBuilder(
                        builder: (context, constrains) {
                          return Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                gradient: const LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      Color.fromARGB(255, 255, 17, 0),
                                      Color.fromARGB(255, 0, 140, 255)
                                    ])),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                const GlassBox(
                                  width: double.infinity,
                                  height: double.infinity,
                                  radius: 30.0,
                                  sigma: 4.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Text(
                                        accessories[index].name,
                                        style: const TextStyle(
                                            fontSize: 30,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w800),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        accessories[index].category,
                                        style: const TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w800),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        '\$${accessories[index].price}0',
                                        style: const TextStyle(
                                            fontSize: 25,
                                            color: Colors.black54,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(height: 10),
                                      FittedBox(
                                        child: Text(
                                          '${listTitle[0]}\n${listTitle[1]}',
                                          style: const TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                              color: Colors.red,
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 15),
                                            child: const Text(
                                              'Add Cart',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              border:
                                                  Border.all(color: Colors.red),
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 15),
                                            child: const Text(
                                              'Add to list',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Positioned(
                                  bottom: -50,
                                  right: -50,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(PageRouteBuilder(
                                        reverseTransitionDuration:
                                            const Duration(milliseconds: 650),
                                        transitionDuration:
                                            const Duration(milliseconds: 650),
                                        pageBuilder: (context, animation, _) {
                                          return FadeTransition(
                                            opacity: animation,
                                            child: AccessoriesDetailsScreen(
                                              product: accessories[index],
                                              tag: index,
                                            ),
                                          );
                                        },
                                      ));
                                    },
                                    child: Hero(
                                      tag: index,
                                      child: Transform.rotate(
                                        angle: 120,
                                        child: Image(
                                          width: 275,
                                          image: AssetImage(accessories[index]
                                              .listImage[0]
                                              .image[0]
                                              .position),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.home)),
                  const CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 20,
                    child: Hero(
                      tag: 'logo',
                      child: Image(
                        image: AssetImage('assets/image/logo_gamer.png'),
                      ),
                    ),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.person)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
