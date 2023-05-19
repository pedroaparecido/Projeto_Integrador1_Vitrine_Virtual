import 'package:flutter/material.dart';

import '../widgets/public_body_widget.dart';
import '../widgets/public_menu_drawer_widget.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer: const PublicMenuDrawerWidget(),
      body: PublicBodyWidget(
        children: [
          const SizedBox(height: 50),
          SizedBox(
            height: 50,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              width: 750,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("QUEM SOMOS", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                  VerticalDivider(color: Colors.grey),
                  Expanded(
                    child: Text("Conheça mais sobre o Kako Serv Festas, nossa história, visão, missão e valores."),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 35),
          _AboutDescriptionAndImageWidget(screenWidth: screenWidth),
          const SizedBox(height: 60),
          _AboutMissionVisionValueWidget(screenWidth: screenWidth),
        ],
      ),
    );
  }
}

class _AboutMissionVisionValueWidget extends StatelessWidget {
  const _AboutMissionVisionValueWidget({required double screenWidth}) : _screenWidth = screenWidth;

  final double _screenWidth;

  @override
  Widget build(BuildContext context) {
    print(_screenWidth);
    return _screenWidth > 750
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/images/missao1.png',
                    height: 100,
                    width: 100,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Text('NOSSA MISSÃO', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 15, bottom: 50),
                    child: Text('Vender produtos de qualidade', style: TextStyle(fontSize: 18)),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/images/visao.png',
                    height: 100,
                    width: 100,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Text('NOSSA VISÃO', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 15, bottom: 50),
                    child: Text('Crescer,desenvolver,expandir', style: TextStyle(fontSize: 18)),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/images/value.png',
                    height: 100,
                    width: 100,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Text('NOSSOS VALORES', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 15, bottom: 50),
                    child: Text('XXXXXXXXXXXXXXXXXXX', style: TextStyle(fontSize: 18)),
                  ),
                ],
              ),
            ],
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/images/missao1.png',
                    height: 100,
                    width: 100,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Text('NOSSA MISSÃO', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 15, bottom: 50),
                    child: Text('Vender produtos de qualidade', style: TextStyle(fontSize: 18)),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/images/visao.png',
                    height: 100,
                    width: 100,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Text('NOSSA VISÃO', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 15, bottom: 50),
                    child: Text('Crescer,desenvolver,expandir', style: TextStyle(fontSize: 18)),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/images/value.png',
                    height: 100,
                    width: 100,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Text('NOSSOS VALORES', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 15, bottom: 50),
                    child: Text('XXXXXXXXXXXXXXXXXXX', style: TextStyle(fontSize: 18)),
                  ),
                ],
              ),
            ],
          );
  }
}

class _AboutDescriptionAndImageWidget extends StatelessWidget {
  const _AboutDescriptionAndImageWidget({required double screenWidth}) : _screenWidth = screenWidth;

  final double _screenWidth;

  @override
  Widget build(BuildContext context) {
    return _screenWidth > 750
        ? Container(
            color: Colors.black45,
            // height: 500,
            child: Row(
              children: [
                Expanded(
                    flex: 6,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 80, right: 20),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Kako Serv Festas',
                                textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 28, color: Colors.white),
                              ),
                            ),
                            Text(
                              "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et ",
                              style: TextStyle(fontSize: 18, color: Colors.white),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    )),
                Expanded(
                  flex: 6,
                  child: Image.asset(
                    'assets/images/fachada1.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          )
        : Container(
            color: Colors.black45,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Kako Serv Festas',
                          style: TextStyle(fontSize: 28, color: Colors.white),
                        ),
                      ),
                      Text(
                        "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et ",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  'assets/images/fachada1.jpg',
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ],
            ),
          );
  }
}
