import 'package:flutter/material.dart';

import '../widgets/footer_widget.dart';
import '../widgets/header_widget.dart';

class HomeAboutPage extends StatelessWidget {
  const HomeAboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const HeaderWidget(),
          SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("QUEM SOMOS", style: TextStyle(fontWeight: FontWeight.bold)),
                VerticalDivider(color: Colors.grey),
                Text("Conheça mais sobre o Kako Serv Festas, nossa história, visão, missão e valores.")
              ],
            ),
          ),
          const Divider(),
          Center(
            child: Container(
              color: Colors.black45,
              height: 500,
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
                                "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
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
            ),
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Image.asset(
                      'assets/images/missao1.png',
                      height: 100,
                      width: 100,
                    ),
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
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Image.asset(
                      'assets/images/visao.png',
                      height: 100,
                      width: 100,
                    ),
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
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Image.asset(
                      'assets/images/value.png',
                      height: 100,
                      width: 100,
                    ),
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
          ),
          const FooterWidget()
        ],
      ),
    ));
  }
}
