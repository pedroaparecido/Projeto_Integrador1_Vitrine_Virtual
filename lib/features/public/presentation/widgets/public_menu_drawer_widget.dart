import 'package:flutter/material.dart';

import '../../../../core/helpers/helper_menu_list_buttons.dart';

class PublicMenuDrawerWidget extends StatelessWidget {
  const PublicMenuDrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ...menuListButtons,
        ],
      ),
    );
  }
}
