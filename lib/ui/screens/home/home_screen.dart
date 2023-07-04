import 'package:flutter/material.dart';
import 'package:flutter_gamer_ui/memory/in_memory_wireless.dart';
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                  Text('Gamer'),
                  IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
                ],
              ),
            ),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: wireless.length,
                clipBehavior: Clip.none,
                physics: const BouncingScrollPhysics(
                    parent: ClampingScrollPhysics()),
                itemBuilder: (context, index) {
                  return Container(
                      margin: const EdgeInsets.symmetric(vertical: 50.0),
                      padding: const EdgeInsets.only(right: 50),
                      child: Transform.translate(
                        offset: const Offset(20, 0),
                        child: LayoutBuilder(builder: (context, constrains) {
                          return Stack(
                            clipBehavior: Clip.none,
                            children: [
                              GlassBox(
                                theWidth: double.infinity,
                                theHeight: double.infinity,
                                theChild: SizedBox.shrink(),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 40),
                                child: Column(
                                  children: [
                                    Text(wireless[index].name),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: -60,
                                right: -20,
                                child: Image(
                                  width: 200,
                                  image: AssetImage(wireless[index].image),
                                ),
                              ),
                            ],
                          );
                        }),
                      ));
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
                  CircleAvatar(
                    backgroundColor: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                          ),
                        ),
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
