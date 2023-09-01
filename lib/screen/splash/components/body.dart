import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  final controller = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.only(bottom: 50),
          width: double.infinity,
          child: PageView(controller: controller, children: [
            Stack(children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/splash/1.jpg'),
                        fit: BoxFit.cover)),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          stops: const [
                        0.2,
                        0.9
                      ],
                          colors: [
                        Colors.black.withOpacity(.6),
                        Colors.black.withOpacity(.1)
                      ])),
                ),
              ),
              Positioned(
                  left: 30,
                  top: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 70),
                        child: Text(
                          'Ultra Modern Home',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        'Our products combine functional utility \n with elegance, kepping in view the \n efficient and of floor space.',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 40),
                      Center(
                          child: SmoothPageIndicator(
                              controller: controller, count: 3))
                    ],
                  )),
            ]),
            Stack(children: [
              Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/splash/2.jpg'),
                        fit: BoxFit.cover)),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          stops: const [
                        0.2,
                        0.9
                      ],
                          colors: [
                        Colors.black.withOpacity(.6),
                        Colors.black.withOpacity(.1)
                      ])),
                ),
              ),
              Positioned(
                  left: 30,
                  top: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 120),
                        child: Text(
                          'Top Notch Decorations',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 80),
                        child: Text(
                          ' With selective combination from our \n interior expert, makes home color and \n decorations more appealing.',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      Center(
                          child: SmoothPageIndicator(
                              controller: controller, count: 3))
                    ],
                  )),
            ]),
            Stack(children: [
              Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/splash/3.jpg'),
                        fit: BoxFit.cover)),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          stops: const [
                        0.2,
                        0.9
                      ],
                          colors: [
                        Colors.black.withOpacity(.6),
                        Colors.black.withOpacity(.1)
                      ])),
                ),
              ),
              Positioned(
                  left: 30,
                  top: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 130),
                        child: Text(
                          'Classic Style',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        'Our products combine functional utility \n with elegance, kepping in view the \n efficient and of floor space.',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 40),
                      Center(
                          child: SmoothPageIndicator(
                              controller: controller, count: 3)),
                    ],
                  )),
            ]),
          ]),
        ),
        bottomSheet: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          height: 80,
        ),
      ),
    );
  }
}