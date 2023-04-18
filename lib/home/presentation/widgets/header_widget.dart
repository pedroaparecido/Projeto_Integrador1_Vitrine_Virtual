import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vitrine_virtual/core/configs/route_config.dart';
import 'package:vitrine_virtual/home/presentation/pages/home_page.dart';
import 'package:vitrine_virtual/home/presentation/pages/home_about_page.dart';

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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/images/logo.png'),
          Row(
            children: [
              TextButton(onPressed: () => Get.offNamed(RouteConfig.home), child: const Text('Home')),
              TextButton(onPressed: () => Get.offNamed(RouteConfig.login), child: const Text('Login')),
              TextButton(onPressed: () => Get.offNamed(RouteConfig.about), child: const Text('Quem Somos')),
              TextButton(onPressed: () => Get.offNamed(RouteConfig.contact), child: const Text('Contatos')),
            ],
          ),
        ],
      ),
    );
  }
}
