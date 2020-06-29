import 'dart:math';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController;

  double viewportFraction = 0.8;

  double pageOffset = 0;
  double width, height;

  @override
  void initState() {
    super.initState();
    pageController =
        PageController(initialPage: 0, viewportFraction: viewportFraction)
          ..addListener(() {
            setState(() {
              pageOffset = pageController.page;
            });
          });
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView.builder(
            controller: pageController,
            itemBuilder: (context, index) {
              double scale = max(viewportFraction,
                  (1 - (pageOffset - index).abs()) + viewportFraction);

              double angle = (pageOffset - index).abs();

              if (angle > 0.5) {
                angle = 1 - angle;
              }
              return Container(
                alignment:
                    Alignment.lerp(Alignment.topCenter, Alignment.center, 0.4),
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
                height: height / 2,
                child: Transform(
                  transform: Matrix4.identity()
                    ..setEntry(
                      3,
                      2,
                      0.002,
                    )
                    ..rotateY(angle),
                  alignment: Alignment.center,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/big.png'),
                              colorFilter: ColorFilter.mode(
                                  Colors.grey, BlendMode.saturation),
                            ),
                          ),
                          alignment: Alignment.center,
                          height: height / 1.5,
                          width: 300,
                        ),
                        Container(
                          height: height / 1.5,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: <Color>[
                                Color.fromRGBO(60, 28, 136, 0.846),
                                Color.fromRGBO(51, 89, 168, 0.9)
                              ],
                              stops: [0, 1],
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset('assets/images/Vector1.png'),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  'Добро\nпожаловать',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'HelveticaNeue',
                                      color: Colors.white,
                                      fontSize: 29,
                                      letterSpacing: 1.4,
                                      height: 1.2),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  'shdfsd fd jkasfk jas askjdhas kj daksjd aksjhdk aj dkjashdkad kjasdhkjasd kashdk ajshdjk aska gsdhfkjsdhkf sdjkfhsdjk fhjksdhf jksdhkjfs jkdfjkhsdkj\nhighdfjkghkj dfghdf',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      height: 1.3,
                                      fontFamily: 'HelveticaNeue',
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
            itemCount: 5,
          ),
          Positioned(
            bottom: height / 6,
            left: width / 2.55,
            child: SmoothPageIndicator(
              controller: pageController,
              count: 5,
              effect: SlideEffect(
                  dotWidth: 9,
                  dotHeight: 9,
                  dotColor: Colors.grey[300],
                  activeDotColor: Color(0xFF3553A5)),
            ),
          ),
          Positioned(
            bottom: height / 18,
            left: width / 4.3,
            child: GestureDetector(
              child: Container(
                height: 50,
                width: width / 1.85,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Colors.white, width: 1),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Color.fromRGBO(54, 72, 159, 0.3),
                        blurRadius: 10,
                        offset: Offset(7.0, 7.0),
                      )
                    ]),
                child: Center(
                    child: Text(
                  'Войти',
                  style: TextStyle(
                      fontFamily: 'HelveticaNeue',
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      fontSize: 18,
                      color: Color(0xFF7F75B3)),
                )),
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
