import 'package:carousel_slider/carousel_slider.dart';
import 'package:finding_a_tour/screens/register_clubs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class carinf extends StatefulWidget {
  carinf({Key? key}) : super(key: key);

  @override
  State<carinf> createState() => _carinfState();
}

class _carinfState extends State<carinf> {
  int activeState = 0;
  final urlImages = [
    'https://i.ibb.co/wd6WNzN/Carslid1.jpg',
    'https://i.ibb.co/8zNpCqG/Carslid2.jpg',
    'https://i.ibb.co/CMhT6wj/Carslid3.jpg'
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(22))),
          /* automaticallyImplyLeading: false, */
          title: const Text('Registrar'),
          centerTitle: true,
          titleTextStyle: const TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.bold,
              fontFamily: 'SFPRODISPLAY'),
        ),
        body: Center(
          child: Column(
            children: [
              CarouselSlider.builder(
                options: CarouselOptions(
                    height: 500,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                    enableInfiniteScroll: false,
                    onPageChanged: (index, reason) =>
                        setState(() => activeState = index)),
                itemCount: urlImages.length,
                itemBuilder: (context, index, realindex) {
                  final urlImage = urlImages[index];
                  return buildImage(urlImage, index);
                },
              ),
              const SizedBox(height: 10),
              buildIndicator(),
              const SizedBox(height: 10),
              _bottonLogin(),
            ],
          ),
        ),
      );

  Widget buildImage(String urlImage, int index) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        color: Colors.white,
        child: Image.network(
          urlImage,
          fit: BoxFit.scaleDown,
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
      activeIndex: activeState, count: urlImages.length);

  Widget _bottonLogin() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 85.0, vertical: 14.0),
            child: const Text(
              'Iniciar Sesión',
              style: TextStyle(
                fontSize: 10.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          elevation: 0,
          color: const Color.fromARGB(255, 66, 226, 186),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => clubReg()));
          });
    });
  }
}
