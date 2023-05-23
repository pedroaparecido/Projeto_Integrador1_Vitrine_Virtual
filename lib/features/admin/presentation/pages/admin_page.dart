import 'package:flutter/material.dart';

import '../widgets/admin_menu_drawer_widget.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Administração'),
      ),
      drawer: const AdminMenuDrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(child: Image.asset('assets/images/logo.png')),
      ),
    );
  }
}
