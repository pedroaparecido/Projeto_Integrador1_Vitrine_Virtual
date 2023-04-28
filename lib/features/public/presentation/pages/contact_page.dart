import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/helpers/laucher_helper.dart';
import '../../../../core/widgets/footer_widget.dart';
import '../../../../core/widgets/header_widget.dart';
import '../widgets/contact_form_widget.dart';
import '../widgets/public_menu_drawer_widget.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const PublicMenuDrawerWidget(),
        body: SingleChildScrollView(
            child: Column(children: [
          const HeaderWidget(),
          const SizedBox(height: 16),
          Row(
            children: [
              const Expanded(flex: 9, child: ContactFormWidget()),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Card(
                      elevation: 8,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(children: [
                          IconButton(
                            onPressed: () => LauncherHelper.url('tel:+5517992688736'),
                            icon: const Icon(FontAwesomeIcons.phone, color: Colors.red),
                          ),
                          const Text("TELEFONE", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                          const Text("(11) 4258-8855", style: TextStyle(fontSize: 12)),
                        ]),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Card(
                      elevation: 8,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(children: [
                          IconButton(
                            onPressed: () =>
                                LauncherHelper.url('https://wa.me/5517992688736?text=Tenho%20interesse%20em%20comprar'),
                            icon: const Icon(FontAwesomeIcons.whatsapp, color: Colors.green),
                          ),
                          const Text("WHATSAPP", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                          const Text("(11) 99547-8855", style: TextStyle(fontSize: 12)),
                        ]),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Card(
                      elevation: 8,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(children: [
                          IconButton(
                            onPressed: () =>
                                LauncherHelper.url('mailto:kakoServFestas@gmail.com?subject=News&body=New%20plugin'),
                            icon: const Icon(Icons.email_outlined, color: Colors.black),
                          ),
                          const Text("E-MAIL", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                          const Text("kakoServFestas@gmail.com", style: TextStyle(fontSize: 12)),
                        ]),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Card(
                      elevation: 8,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(children: [
                          IconButton(
                              onPressed: () => LauncherHelper.url('http://facebook.com.br'),
                              icon: const Icon(FontAwesomeIcons.squareFacebook, color: Colors.blueAccent)),
                          const Text("FACEBOOK", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                          const Text("kakoServFestas@gmail.com", style: TextStyle(fontSize: 12)),
                        ]),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Card(
                      elevation: 8,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(children: [
                          IconButton(
                            onPressed: () => LauncherHelper.url('http://instagram.com'),
                            icon: const Icon(FontAwesomeIcons.instagram, color: Colors.pinkAccent),
                          ),
                          const Text("INSTAGRAN", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                          const Text("kakoServFestas@gmail.com", style: TextStyle(fontSize: 12)),
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 80),
          const FooterWidget(),
        ])));
  }
}
