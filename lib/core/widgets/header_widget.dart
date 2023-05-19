import 'package:flutter/material.dart';

import '../helpers/helper_menu_list_buttons.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.black,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 6,
            offset: const Offset(1, 4), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipOval(
              child: Container(
                margin: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.5), // Cor da sombra branca com transparência
                      spreadRadius: 4, // Espalhamento da sombra
                      blurRadius: 2, // Desfoque da sombra
                      offset: const Offset(0, 2), // Deslocamento da sombra (horizontal, vertical)
                    ),
                  ],
                ),
                child: Image.asset(
                  'assets/images/logo.png',
                ),
              ),
            ),
            const Spacer(),
            MediaQuery.of(context).size.width < 450
                ? IconButton(
                    onPressed: () => Scaffold.of(context).openDrawer(),
                    icon: const Icon(
                      Icons.menu,
                      size: 40,
                      color: Colors.white,
                    ))
                : Row(
                    children: menuListButtons,
                  ),
          ],
        ),
      ),
    );
  }
}
