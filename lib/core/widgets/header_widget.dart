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
        color: Colors.orange,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 2,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/images/logo.png'),
            const Spacer(),
            MediaQuery.of(context).size.width < 450
                ? IconButton(onPressed: () => Scaffold.of(context).openDrawer(), icon: const Icon(Icons.menu, size: 40))
                : Row(
                    children: menuListButtons,
                  ),
          ],
        ),
      ),
    );
  }
}
