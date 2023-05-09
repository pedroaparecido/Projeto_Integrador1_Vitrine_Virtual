
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/widgets/dialog_widget.dart';
import '../../../../service_locator.dart';
import '../../domain/entities/banners_entity.dart';
import '../../domain/repositories/banners_repository.dart';

class BannersController extends GetxController {
  final _bannersRepository = sl<BannersRepository>();

  final isLoading = false.obs;
  final banners = <BannersEntity>[].obs;
  BannersEntity? banner;

  @override
  void onInit() async {
    await getAllBanners();
    super.onInit();
  }
 

  Future<void> insertBanners(String image) async {
    isLoading.value = true;
    final res = await _bannersRepository.insert(image: image);
    res.fold(
      (l) => DialogWidget.feedback(result: false, message: l.toString()),
      (r) {
        banners.add(r);
        Get.back();
      },
    );
    isLoading.value = false;
  }


  Future<void> getAllBanners() async {
    isLoading.value = true;

    final res = await _bannersRepository.getAll();
    res.fold(
      (l) => DialogWidget.feedback(result: false, message: l.toString()),
      (r) => banners.assignAll(r),
    );

    isLoading.value = false;
  }


  Future<void> updateBanners(BannersCategoryEntity image) async {
    isLoading.value = true;
    final res = await _bannersRepository.update(image: image);
    res.fold(
      (l) => DialogWidget.feedback(result: false, message: l.toString()),
      // (r) => productCategories.add(r),
      (r) => null,
    );
    isLoading.value = false;
  }

  Future<void> deleteBanners(int id) async {
    isLoading.value = true;
    final res = await _bannersRepository.delete(id);

    if (res) {
      isLoading.value = false;
      banners.removeWhere((element) => element.id == id);
      DialogWidget.feedback(result: true, message: 'Imagem deletada com sucesso');
    } else {
      isLoading.value = false;
      DialogWidget.feedback(result: false, message: 'Erro ao deletar imagem');
    }
  }
}
