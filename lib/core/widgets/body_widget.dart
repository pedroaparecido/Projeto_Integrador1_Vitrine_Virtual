import 'package:flutter/material.dart';

import 'footer_widget.dart';
import 'header_widget.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    super.key,
    required this.children,
    this.isPublic = true,
  });

  final List<Widget> children;
  final bool isPublic;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          isPublic ? const HeaderWidget() : Container(),
          Container(
            alignment: Alignment.center,
            color: Colors.amber,
            width: 900,
            // height: 750,
            constraints: const BoxConstraints(minHeight: 650),

            child: Column(
              children: children,
            ),
          ),
          const FooterWidget()
        ],
      ),
    );
  }
}
