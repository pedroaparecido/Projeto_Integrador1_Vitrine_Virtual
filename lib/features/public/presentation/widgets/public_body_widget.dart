import 'package:flutter/material.dart';

import '../../../../core/widgets/footer_widget.dart';
import '../../../../core/widgets/header_widget.dart';

class PublicBodyWidget extends StatelessWidget {
  const PublicBodyWidget({
    super.key,
    required this.children,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderWidget(),
            ...children,
            const FooterWidget(),
          ],
        ),
      ),
    );
  }
}
