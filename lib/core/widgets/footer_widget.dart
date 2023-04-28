import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../helpers/laucher_helper.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      color: const Color(0xFF2A3338),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: SizedBox(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => LauncherHelper.url('http://facebook.com.br'),
                    icon: const Icon(FontAwesomeIcons.squareFacebook, color: Colors.white),
                  ),
                  IconButton(
                    onPressed: () => LauncherHelper.url('mailto:smith@example.org?subject=News&body=New%20plugin'),
                    icon: const Icon(Icons.email_outlined, color: Colors.white),
                  ),
                  IconButton(
                    onPressed: () => LauncherHelper.url('http://instagram.com'),
                    icon: const Icon(FontAwesomeIcons.instagram, color: Colors.white),
                  ),
                  IconButton(
                    onPressed: () =>
                        LauncherHelper.url('https://wa.me/5517992688736?text=Tenho%20interesse%20em%20comprar'),
                    icon: const Icon(FontAwesomeIcons.whatsapp, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(6.0),
            child: Text(
              'Kako Serv Festas',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(top: 10, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Rua: XXXXXXXXX,48 - Bairro XXXXX', style: TextStyle(color: Colors.white)),
                Text('Catanduva/SP CEP 15080-020', style: TextStyle(color: Colors.white)),
                Text('(17) 99999-0000', style: TextStyle(color: Colors.white)),
                Text('CNPJ 12.000.000/0001-21', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          Text('Desenvolvimento Projeto Integrador Univesp',
              textAlign: TextAlign.center, style: TextStyle(color: Colors.grey[500], fontSize: 12)),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
