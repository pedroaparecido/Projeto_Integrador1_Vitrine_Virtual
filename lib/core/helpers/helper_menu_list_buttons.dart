import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../configs/route_config.dart';

final menuListButtons = [
  TextButton(onPressed: () => Get.offNamed(RouteConfig.home), child: const Text('Home')),
  TextButton(onPressed: () => Get.offNamed(RouteConfig.about), child: const Text('Quem Somos')),
  TextButton(onPressed: () => Get.offNamed(RouteConfig.contact), child: const Text('Contatos')),
  TextButton(onPressed: () => Get.offNamed(RouteConfig.login), child: const Text('Admin')),
];
