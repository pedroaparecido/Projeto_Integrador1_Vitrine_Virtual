import 'package:get/get.dart';

import '../../../../core/widgets/dialog_widget.dart';
import '../../../../service_locator.dart';
import '../../domain/entities/banners_category_entity.dart';
import '../../domain/repositories/banners_repository.dart';

class BannersController extends GetxController {
  final _bannersRepository = sl<BannersRepository>();

  final isLoading = false.obs;

  final bannersCategories = <BannersCategoryEntity>[].obs;
  BannersCategoryEntity? productCategory;

  @override
  void onInit() async {
    await getAllProductCategory();
    super.onInit();
  }

  Future<void> insertBanners(String image) async {
    isLoading.value = true;
    final res = await _bannersRepository.insert(image: image);
    res.fold(
      (l) => DialogWidget.feedback(result: false, message: l.toString()),
      (r) {
        bannersCategories.add(r);
        Get.back();
      },
    );
    isLoading.value = false;
  }

  Future<void> getAllProductCategory() async {
    isLoading.value = true;
    final res = await _bannersRepository.getAll();
    res.fold(
      (l) => DialogWidget.feedback(result: false, message: l.toString()),
      (r) => bannersCategories.assignAll(r),
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
      bannersCategories.removeWhere((element) => element.id == id);
      DialogWidget.feedback(result: true, message: 'Imgem deletada com sucesso');
    } else {
      isLoading.value = false;
      DialogWidget.feedback(result: false, message: 'Erro ao deletar imagem');
    }
  }
}
